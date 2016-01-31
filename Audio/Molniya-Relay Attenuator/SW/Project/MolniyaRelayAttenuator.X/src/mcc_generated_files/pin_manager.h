/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using MPLAB(c) Code Configurator

  @Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - v3.00
        Device            :  PIC18F26K22
        Version           :  1.01
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.20

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

    Microchip licenses to you the right to use, modify, copy and distribute
    Software only when embedded on a Microchip microcontroller or digital signal
    controller that is integrated into your product or third party product
    (pursuant to the sublicense terms in the accompanying license agreement).

    You should refer to the license agreement accompanying this Software for
    additional information regarding your rights and obligations.

    SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
    EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
    MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
    IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
    CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
    OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
    INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
    CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
    SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
    (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

*/


#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set OUT_R3R aliases
#define OUT_R3R_TRIS               TRISA0
#define OUT_R3R_LAT                LATA0
#define OUT_R3R_PORT               RA0
#define OUT_R3R_ANS                ANSA0
#define OUT_R3R_SetHigh()    do { LATA0 = 1; } while(0)
#define OUT_R3R_SetLow()   do { LATA0 = 0; } while(0)
#define OUT_R3R_Toggle()   do { LATA0 = ~LATA0; } while(0)
#define OUT_R3R_GetValue()         RA0
#define OUT_R3R_SetDigitalInput()    do { TRISA0 = 1; } while(0)
#define OUT_R3R_SetDigitalOutput()   do { TRISA0 = 0; } while(0)

#define OUT_R3R_SetAnalogMode()   do { ANSA0 = 1; } while(0)
#define OUT_R3R_SetDigitalMode()   do { ANSA0 = 0; } while(0)


// get/set OUT_R3S aliases
#define OUT_R3S_TRIS               TRISA1
#define OUT_R3S_LAT                LATA1
#define OUT_R3S_PORT               RA1
#define OUT_R3S_ANS                ANSA1
#define OUT_R3S_SetHigh()    do { LATA1 = 1; } while(0)
#define OUT_R3S_SetLow()   do { LATA1 = 0; } while(0)
#define OUT_R3S_Toggle()   do { LATA1 = ~LATA1; } while(0)
#define OUT_R3S_GetValue()         RA1
#define OUT_R3S_SetDigitalInput()    do { TRISA1 = 1; } while(0)
#define OUT_R3S_SetDigitalOutput()   do { TRISA1 = 0; } while(0)

#define OUT_R3S_SetAnalogMode()   do { ANSA1 = 1; } while(0)
#define OUT_R3S_SetDigitalMode()   do { ANSA1 = 0; } while(0)


// get/set OUT_R2S aliases
#define OUT_R2S_TRIS               TRISA2
#define OUT_R2S_LAT                LATA2
#define OUT_R2S_PORT               RA2
#define OUT_R2S_ANS                ANSA2
#define OUT_R2S_SetHigh()    do { LATA2 = 1; } while(0)
#define OUT_R2S_SetLow()   do { LATA2 = 0; } while(0)
#define OUT_R2S_Toggle()   do { LATA2 = ~LATA2; } while(0)
#define OUT_R2S_GetValue()         RA2
#define OUT_R2S_SetDigitalInput()    do { TRISA2 = 1; } while(0)
#define OUT_R2S_SetDigitalOutput()   do { TRISA2 = 0; } while(0)

#define OUT_R2S_SetAnalogMode()   do { ANSA2 = 1; } while(0)
#define OUT_R2S_SetDigitalMode()   do { ANSA2 = 0; } while(0)


// get/set OUT_R2R aliases
#define OUT_R2R_TRIS               TRISA3
#define OUT_R2R_LAT                LATA3
#define OUT_R2R_PORT               RA3
#define OUT_R2R_ANS                ANSA3
#define OUT_R2R_SetHigh()    do { LATA3 = 1; } while(0)
#define OUT_R2R_SetLow()   do { LATA3 = 0; } while(0)
#define OUT_R2R_Toggle()   do { LATA3 = ~LATA3; } while(0)
#define OUT_R2R_GetValue()         RA3
#define OUT_R2R_SetDigitalInput()    do { TRISA3 = 1; } while(0)
#define OUT_R2R_SetDigitalOutput()   do { TRISA3 = 0; } while(0)

#define OUT_R2R_SetAnalogMode()   do { ANSA3 = 1; } while(0)
#define OUT_R2R_SetDigitalMode()   do { ANSA3 = 0; } while(0)


// get/set OUT_R1R aliases
#define OUT_R1R_TRIS               TRISA4
#define OUT_R1R_LAT                LATA4
#define OUT_R1R_PORT               RA4
#define OUT_R1R_SetHigh()    do { LATA4 = 1; } while(0)
#define OUT_R1R_SetLow()   do { LATA4 = 0; } while(0)
#define OUT_R1R_Toggle()   do { LATA4 = ~LATA4; } while(0)
#define OUT_R1R_GetValue()         RA4
#define OUT_R1R_SetDigitalInput()    do { TRISA4 = 1; } while(0)
#define OUT_R1R_SetDigitalOutput()   do { TRISA4 = 0; } while(0)



// get/set OUT_R1S aliases
#define OUT_R1S_TRIS               TRISA5
#define OUT_R1S_LAT                LATA5
#define OUT_R1S_PORT               RA5
#define OUT_R1S_ANS                ANSA5
#define OUT_R1S_SetHigh()    do { LATA5 = 1; } while(0)
#define OUT_R1S_SetLow()   do { LATA5 = 0; } while(0)
#define OUT_R1S_Toggle()   do { LATA5 = ~LATA5; } while(0)
#define OUT_R1S_GetValue()         RA5
#define OUT_R1S_SetDigitalInput()    do { TRISA5 = 1; } while(0)
#define OUT_R1S_SetDigitalOutput()   do { TRISA5 = 0; } while(0)

#define OUT_R1S_SetAnalogMode()   do { ANSA5 = 1; } while(0)
#define OUT_R1S_SetDigitalMode()   do { ANSA5 = 0; } while(0)


// get/set OUT_LED4 aliases
#define OUT_LED4_TRIS               TRISA6
#define OUT_LED4_LAT                LATA6
#define OUT_LED4_PORT               RA6
#define OUT_LED4_SetHigh()    do { LATA6 = 1; } while(0)
#define OUT_LED4_SetLow()   do { LATA6 = 0; } while(0)
#define OUT_LED4_Toggle()   do { LATA6 = ~LATA6; } while(0)
#define OUT_LED4_GetValue()         RA6
#define OUT_LED4_SetDigitalInput()    do { TRISA6 = 1; } while(0)
#define OUT_LED4_SetDigitalOutput()   do { TRISA6 = 0; } while(0)



// get/set IN_BUT4 aliases
#define IN_BUT4_TRIS               TRISB0
#define IN_BUT4_LAT                LATB0
#define IN_BUT4_PORT               RB0
#define IN_BUT4_WPU                WPUB0
#define IN_BUT4_ANS                ANSB0
#define IN_BUT4_SetHigh()    do { LATB0 = 1; } while(0)
#define IN_BUT4_SetLow()   do { LATB0 = 0; } while(0)
#define IN_BUT4_Toggle()   do { LATB0 = ~LATB0; } while(0)
#define IN_BUT4_GetValue()         PORTBbits.RB0
#define IN_BUT4_SetDigitalInput()    do { TRISB0 = 1; } while(0)
#define IN_BUT4_SetDigitalOutput()   do { TRISB0 = 0; } while(0)

#define IN_BUT4_SetPullup()    do { WPUB0 = 1; } while(0)
#define IN_BUT4_ResetPullup()   do { WPUB0 = 0; } while(0)
#define IN_BUT4_SetAnalogMode()   do { ANSB0 = 1; } while(0)
#define IN_BUT4_SetDigitalMode()   do { ANSB0 = 0; } while(0)


// get/set IN_BUT3 aliases
#define IN_BUT3_TRIS               TRISB1
#define IN_BUT3_LAT                LATB1
#define IN_BUT3_PORT               RB1
#define IN_BUT3_WPU                WPUB1
#define IN_BUT3_ANS                ANSB1
#define IN_BUT3_SetHigh()    do { LATB1 = 1; } while(0)
#define IN_BUT3_SetLow()   do { LATB1 = 0; } while(0)
#define IN_BUT3_Toggle()   do { LATB1 = ~LATB1; } while(0)
#define IN_BUT3_GetValue()         PORTBbits.RB1
#define IN_BUT3_SetDigitalInput()    do { TRISB1 = 1; } while(0)
#define IN_BUT3_SetDigitalOutput()   do { TRISB1 = 0; } while(0)

#define IN_BUT3_SetPullup()    do { WPUB1 = 1; } while(0)
#define IN_BUT3_ResetPullup()   do { WPUB1 = 0; } while(0)
#define IN_BUT3_SetAnalogMode()   do { ANSB1 = 1; } while(0)
#define IN_BUT3_SetDigitalMode()   do { ANSB1 = 0; } while(0)


// get/set IN_BUT2 aliases
#define IN_BUT2_TRIS               TRISB2
#define IN_BUT2_LAT                LATB2
#define IN_BUT2_PORT               RB2
#define IN_BUT2_WPU                WPUB2
#define IN_BUT2_ANS                ANSB2
#define IN_BUT2_SetHigh()    do { LATB2 = 1; } while(0)
#define IN_BUT2_SetLow()   do { LATB2 = 0; } while(0)
#define IN_BUT2_Toggle()   do { LATB2 = ~LATB2; } while(0)
#define IN_BUT2_GetValue()         PORTBbits.RB2
#define IN_BUT2_SetDigitalInput()    do { TRISB2 = 1; } while(0)
#define IN_BUT2_SetDigitalOutput()   do { TRISB2 = 0; } while(0)

#define IN_BUT2_SetPullup()    do { WPUB2 = 1; } while(0)
#define IN_BUT2_ResetPullup()   do { WPUB2 = 0; } while(0)
#define IN_BUT2_SetAnalogMode()   do { ANSB2 = 1; } while(0)
#define IN_BUT2_SetDigitalMode()   do { ANSB2 = 0; } while(0)


// get/set IN_BUT1 aliases
#define IN_BUT1_TRIS               TRISB3
#define IN_BUT1_LAT                LATB3
#define IN_BUT1_PORT               RB3
#define IN_BUT1_WPU                WPUB3
#define IN_BUT1_ANS                ANSB3
#define IN_BUT1_SetHigh()    do { LATB3 = 1; } while(0)
#define IN_BUT1_SetLow()   do { LATB3 = 0; } while(0)
#define IN_BUT1_Toggle()   do { LATB3 = ~LATB3; } while(0)
#define IN_BUT1_GetValue()         PORTBbits.RB3
#define IN_BUT1_SetDigitalInput()    do { TRISB3 = 1; } while(0)
#define IN_BUT1_SetDigitalOutput()   do { TRISB3 = 0; } while(0)

#define IN_BUT1_SetPullup()    do { WPUB3 = 1; } while(0)
#define IN_BUT1_ResetPullup()   do { WPUB3 = 0; } while(0)
#define IN_BUT1_SetAnalogMode()   do { ANSB3 = 1; } while(0)
#define IN_BUT1_SetDigitalMode()   do { ANSB3 = 0; } while(0)


// get/set OUT_LED3 aliases
#define OUT_LED3_TRIS               TRISC0
#define OUT_LED3_LAT                LATC0
#define OUT_LED3_PORT               RC0
#define OUT_LED3_SetHigh()    do { LATC0 = 1; } while(0)
#define OUT_LED3_SetLow()   do { LATC0 = 0; } while(0)
#define OUT_LED3_Toggle()   do { LATC0 = ~LATC0; } while(0)
#define OUT_LED3_GetValue()         RC0
#define OUT_LED3_SetDigitalInput()    do { TRISC0 = 1; } while(0)
#define OUT_LED3_SetDigitalOutput()   do { TRISC0 = 0; } while(0)



// get/set OUT_LED2 aliases
#define OUT_LED2_TRIS               TRISC1
#define OUT_LED2_LAT                LATC1
#define OUT_LED2_PORT               RC1
#define OUT_LED2_SetHigh()    do { LATC1 = 1; } while(0)
#define OUT_LED2_SetLow()   do { LATC1 = 0; } while(0)
#define OUT_LED2_Toggle()   do { LATC1 = ~LATC1; } while(0)
#define OUT_LED2_GetValue()         RC1
#define OUT_LED2_SetDigitalInput()    do { TRISC1 = 1; } while(0)
#define OUT_LED2_SetDigitalOutput()   do { TRISC1 = 0; } while(0)



// get/set OUT_LED1 aliases
#define OUT_LED1_TRIS               TRISC2
#define OUT_LED1_LAT                LATC2
#define OUT_LED1_PORT               RC2
#define OUT_LED1_ANS                ANSC2
#define OUT_LED1_SetHigh()    do { LATC2 = 1; } while(0)
#define OUT_LED1_SetLow()   do { LATC2 = 0; } while(0)
#define OUT_LED1_Toggle()   do { LATC2 = ~LATC2; } while(0)
#define OUT_LED1_GetValue()         RC2
#define OUT_LED1_SetDigitalInput()    do { TRISC2 = 1; } while(0)
#define OUT_LED1_SetDigitalOutput()   do { TRISC2 = 0; } while(0)

#define OUT_LED1_SetAnalogMode()   do { ANSC2 = 1; } while(0)
#define OUT_LED1_SetDigitalMode()   do { ANSC2 = 0; } while(0)


// get/set OUT_LED1 aliases
#define OUT_LED1_TRIS               TRISC2
#define OUT_LED1_LAT                LATC2
#define OUT_LED1_PORT               RC2
#define OUT_LED1_ANS                ANSC2
#define OUT_LED1_SetHigh()    do { LATC2 = 1; } while(0)
#define OUT_LED1_SetLow()   do { LATC2 = 0; } while(0)
#define OUT_LED1_Toggle()   do { LATC2 = ~LATC2; } while(0)
#define OUT_LED1_GetValue()         RC2
#define OUT_LED1_SetDigitalInput()    do { TRISC2 = 1; } while(0)
#define OUT_LED1_SetDigitalOutput()   do { TRISC2 = 0; } while(0)

#define OUT_LED1_SetAnalogMode()   do { ANSC2 = 1; } while(0)
#define OUT_LED1_SetDigitalMode()   do { ANSC2 = 0; } while(0)


// get/set OUT_LED1 aliases
#define OUT_LED1_TRIS               TRISC2
#define OUT_LED1_LAT                LATC2
#define OUT_LED1_PORT               RC2
#define OUT_LED1_ANS                ANSC2
#define OUT_LED1_SetHigh()    do { LATC2 = 1; } while(0)
#define OUT_LED1_SetLow()   do { LATC2 = 0; } while(0)
#define OUT_LED1_Toggle()   do { LATC2 = ~LATC2; } while(0)
#define OUT_LED1_GetValue()         RC2
#define OUT_LED1_SetDigitalInput()    do { TRISC2 = 1; } while(0)
#define OUT_LED1_SetDigitalOutput()   do { TRISC2 = 0; } while(0)

#define OUT_LED1_SetAnalogMode()   do { ANSC2 = 1; } while(0)
#define OUT_LED1_SetDigitalMode()   do { ANSC2 = 0; } while(0)



/**
 * @Param
    none
 * @Returns
    none
 * @Description
    GPIO and peripheral I/O initialization
 * @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);

#endif // PIN_MANAGER_H
/**
 End of File
*/