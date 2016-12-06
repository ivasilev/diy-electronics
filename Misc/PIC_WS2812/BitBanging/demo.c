

//#include <delays.h>
#include "mcc_generated_files/mcc.h"
#include <stdlib.h>

// Change this to be at least as long as your pixel string (too long will work fine, just be a little slower)

#define PIXELS 120  // Number of pixels in the string


#define DO_SET_HIGH()       IO_RC5_SetHigh()
#define DO_SET_LOW()        IO_RC5_SetLow()
#define DO_SET_OUT()        IO_RC5_SetDigitalOutput()

// These are the timing constraints taken mostly from the WS2812 datasheets 
// These are chosen to be conservative and avoid problems rather than for maximum throughput 

#define T1H  900    // Width of a 1 bit in ns
#define T1L  600    // Width of a 1 bit in ns

#define T0H  400    // Width of a 0 bit in ns
#define T0L  900    // Width of a 0 bit in ns

#define RES 6000    // Width of the low gap between bits to cause a frame to latch

// Actually send a bit to the string. We must to drop to asm to enusre that the complier does
// not reorder things and make it so the delay happens in the wrong place.

inline void sendBit(bool bitVal)
{
    if (bitVal) 
    {
        // 0 bit
        DO_SET_HIGH();
        Nop();
        Nop();
        Nop();
        Nop();  // around 1000 ns
        DO_SET_LOW();
        Nop();
        Nop();
        Nop();  // around 750ns                      
    } 
    else 
    {
        // 1 bit
        DO_SET_HIGH();
        Nop();
        Nop();  // around 500nS
        DO_SET_LOW();
        Nop();
        Nop();
        Nop();
        Nop();
    }
}  

  
inline void sendByte( unsigned char byte ) 
{
    // Neopixel wants bit in highest-to-lowest order
    // so send highest bit (bit #7 in an 8-bit byte since they start at 0)
    // and then shift left so bit 6 moves into 7, 5 moves into 6, etc
    sendBit((byte & (unsigned char)0x80));
    sendBit((byte & (unsigned char)0x40));
    sendBit((byte & (unsigned char)0x20));
    sendBit((byte & (unsigned char)0x10));
    sendBit((byte & (unsigned char)0x8));
    sendBit((byte & (unsigned char)0x4));
    sendBit((byte & (unsigned char)0x2));
    sendBit((byte & (unsigned char)0x1));           
} 

// Set the specified pin up as digital out
void ledsetup() 
{
    DO_SET_HIGH();  
}

inline void sendPixel( unsigned char r, unsigned char g , unsigned char b )  
{  
    sendByte(g);          // Neopixel wants colors in green then red then blue order
    sendByte(r);
    sendByte(b);
}


// Just wait long enough without sending any bots to cause the pixels to latch and display the last sent frame

void show() 
{
	__delay_us( (RES / 1000UL) + 1);				// Round up since the delay must be _at_least_ this long (too short might not work, too long not a problem)
}


// Display a single color on the whole string

void showColor( unsigned char r , unsigned char g , unsigned char b ) 
{
    for( int p=0; p<PIXELS; p++ ) 
    {
        sendPixel( r , g , b );
    }
    show();
}

// Fill the dots one after the other with a color
// rewrite to lift the compare out of the loop
void colorWipe(unsigned char r , unsigned char g, unsigned char b) 
{
    for(unsigned int i=0; i<PIXELS; i+= (PIXELS/60) ) 
    {
        unsigned int p=0;
    
        while (p++<=i) 
        {
            sendPixel(r,g,b);
        } 
     
        while (p++<=PIXELS) 
        {
            sendPixel(0,0,0);  
        }
        show();
        __delay_ms(20);
        __delay_ms(20);
        __delay_ms(20);
        __delay_ms(20);
        __delay_ms(20);
    }
}

// Theatre-style crawling lights.
// Changes spacing to be dynmaic based on string size

#define THEATER_SPACING (PIXELS/20)

void theaterChase( unsigned char r , unsigned char g, unsigned char b ) 
{
    for (int j=0; j< 3 ; j++)  
    {  
        for (int q=0; q < THEATER_SPACING ; q++) 
        {
            unsigned int step=0;
      
      
            for (int i=0; i < PIXELS ; i++) 
            {
                if (step==q) 
                {
                    sendPixel( r , g , b );
                } 
                else 
                {
                    sendPixel( 0 , 0 , 0 );
                }
                
                step++;
        
                if (step==THEATER_SPACING) step =0;
        
            }
      
            show();
            __delay_ms(20);
            __delay_ms(20);
            __delay_ms(20);
            __delay_ms(20);
            __delay_ms(20);
        }
    }
}
        


// I rewrite this one from scrtach to use high resolution for the color wheel to look nicer on a *much* bigger string
                                                                            
void rainbowCycle(unsigned int frames , unsigned int frameAdvance, unsigned int pixelAdvance ) 
{
  
    // Hue is a number between 0 and 3*256 than defines a mix of r->g->b where
    // hue of 0 = Full red
    // hue of 128 = 1/2 red and 1/2 green
    // hue of 256 = Full Green
    // hue of 384 = 1/2 green and 1/2 blue
    // ...
  
    unsigned int firstPixelHue = 0;     // Color for the first pixel in the string
  
    for(unsigned int j=0; j<frames; j++) 
    {
        unsigned int currentPixelHue = firstPixelHue;
       
        for(unsigned int i=0; i< PIXELS; i++) 
        {
            if (currentPixelHue>=(3*256)) 
            {
                // Normalize back down incase we incremented and overflowed
                currentPixelHue -= (3*256);
            }
            
            unsigned char phase = currentPixelHue >> 8;
            unsigned char step = currentPixelHue & 0xff;
                 
            switch (phase) 
            {
                case 0: 
                    sendPixel( ~step , step ,  0 );
                    break;
          
                case 1: 
                    sendPixel( 0 , ~step , step );
                    break;

                case 2: 
                    sendPixel(  step ,0 , ~step );
                    break;
          
            }
      
            currentPixelHue+=pixelAdvance;
        } 

        show();

        firstPixelHue += frameAdvance;
    }
}

void setup() 
{    
  ledsetup();   
}

void setAllColor(unsigned int r, unsigned int g, unsigned int b)
{
    for (int i = 0; i < PIXELS; i++)
    {
        sendPixel(r, g, b);
    }
    
    show ();
}

void delay2secs()
{
    for (int i = 0; i < 100; i++)
    {
        __delay_ms(20);
    }
}

void loop() 
{
    // Some example procedures showing how to display to the pixels:
    colorWipe(255, 0, 0); // Red
    colorWipe(0, 255, 0); // Green
    colorWipe(0, 0, 255); // Blue
  
    // Send a theater pixel chase in...
    theaterChase(127, 127, 127); // White
    theaterChase(127,   0,   0); // Red
    theaterChase(  0, 127,   0); // Green
    theaterChase(  0,   0, 127); // Blue
  
    rainbowCycle(1000 , 1 , 1 );
  
    return; 
}

