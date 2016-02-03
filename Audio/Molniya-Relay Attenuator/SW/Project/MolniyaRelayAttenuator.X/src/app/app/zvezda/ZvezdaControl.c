//============================================================================== 
// File:   ZvezdaControl.c
// Author: ivanvasilev
//
// Created on February 1, 2016, 9:05 PM
//==============================================================================

#include <stdbool.h>

#include "ZvezdaControl.h"
#include "../../appConfig.h"
#include "../../../cocoos/cocoos.h"

#include "../../hal/dou/DouControl.h"
#include "../../dat/button/ButtonFilter.h"

//==============================================================================
// Local types
//==============================================================================


//==============================================================================
// Local defines
//==============================================================================
#define     MIN_PERIOD      50
#define     MAX_PERIOD      1000
#define     DEFAULT_PERIOD  250
#define     STEP            50

#define     LED_COUNT       4

//==============================================================================
// Local data
//==============================================================================
static uint16_t currentPeriod = DEFAULT_PERIOD;
static eDouChannel ledArray[LED_COUNT] = { eDouChannel_Led1, eDouChannel_Led2, 
                                           eDouChannel_Led3, eDouChannel_Led4 };
static int currentLed = 0;
static bool started = false;
static uint16_t currentTime = 0;

//==============================================================================
// Local function declarations
//==============================================================================
static void init();
static void step();

static void onButton1Released();
static void onButton2Pressed();
static void onButton3Pressed();
static void onButton4Released();

//==============================================================================
// Local functions
//==============================================================================
static void init() 
{
    subscribeButtonTransition(eButtonChannel_BUT1, eButtonTransition_Release, onButton1Released);
    subscribeButtonTransition(eButtonChannel_BUT2, eButtonTransition_Press,   onButton2Pressed);
    subscribeButtonTransition(eButtonChannel_BUT3, eButtonTransition_Press,   onButton3Pressed);
    subscribeButtonTransition(eButtonChannel_BUT4, eButtonTransition_Release, onButton4Released);
    for (int i = 0; i < LED_COUNT; i++)
    {
        douSetLow(ledArray[i]);
    }
}

static void onButton1Released()
{
    started = true;
}

static void onButton2Pressed()
{
    if (currentPeriod > STEP) currentPeriod -= STEP;
    if (currentPeriod < MIN_PERIOD ) currentPeriod = MIN_PERIOD;
}

static void onButton3Pressed()
{
    currentPeriod += STEP;
    if (currentPeriod > MAX_PERIOD) currentPeriod = MAX_PERIOD;
}

static void onButton4Released()
{
    started = false;
}

static void step() 
{
    if (true == started)
    {
        currentTime += ZVEZDA_TASK_PERIOD;
        if (currentTime >= currentPeriod) 
        {
            for (int i = 0; i < LED_COUNT; i++)
            {
                if ( i == currentLed ) 
                {
                    setDouState(ledArray[i], eDouState_High);
                } 
                else 
                {
                    setDouState(ledArray[i], eDouState_Low);
                }
            }
            currentLed++;
            if (currentLed >= LED_COUNT) currentLed = 0;
            currentTime = 0;
        }
    }
}

//==============================================================================
// Exported functions
//==============================================================================
void zvezdaTask(void) 
{   
    task_open();
    
    init();

    while(1)  
    {
        step();
        
        task_wait(MS_TO_TICKS(ZVEZDA_TASK_PERIOD));
    }
    
    task_close();
}