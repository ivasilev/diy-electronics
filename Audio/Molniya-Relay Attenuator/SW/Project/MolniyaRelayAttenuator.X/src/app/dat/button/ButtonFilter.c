//============================================================================== 
// File:   ButtonFilter.c
// Author: ivanvasilev
//
// Created on February 01, 2016, 4:43 PM
//==============================================================================


#include "ButtonFilter.h"
#include "../../appConfig.h"
#include "../../../cocoos/cocoos.h"

//==============================================================================
// Local data
//==============================================================================
static eButtonStatus        buttonStatus[eButtonChannel_count];
static buttonCallbackEntry  buttonCallbacks[BUTTON_MAX_CALLBACKS] = {{ 0 }};

//==============================================================================
// Local function declarations
//==============================================================================
static void update();

//==============================================================================
// Local functions
//==============================================================================
static void update() 
{
    for (int channel = 0; channel < eButtonChannel_count; channel++)
    {
        
    }
}

//==============================================================================
// Exported functions
//==============================================================================
void buttonTask(void) 
{
    task_open();
    
    while (1) 
    {
        task_wait(MS_TO_TICKS(BUTTON_TASK_PERIOD));
    }
    
    task_close();
}

eButtonStatus readButton(eButtonChannel channel)
{
    return 0;
}

void subscribeButtonTransition(eButtonChannel channel, eButtonTransition transition, buttonCallback callback)
{
    
}
