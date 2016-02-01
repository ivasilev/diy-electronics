//============================================================================== 
// File:   DouControl.c
// Author: ivanvasilev
//
// Created on January 30, 2016, 14:05 PM
//==============================================================================


#include "DouControl.h"
#include "../../appConfig.h"
#include "../../../cocoos/cocoos.h"

//==============================================================================
// Local data
//==============================================================================
static eDouState douStatus[eDouChannel_count] = DOU_INITIAL_STATE;

//==============================================================================
// Local function declarations
//==============================================================================
static void refreshOutputs();

//==============================================================================
// Local functions
//==============================================================================
static void refreshOutputs() 
{
    for (uint8_t channel = 0; channel < eDouChannel_count; channel++) {
        switch (douStatus[channel]) 
        {
            case eDouState_HighZ:
                douSetHighZ(channel);
                break;
            case eDouState_Low:
                douSetLow(channel); douSetOutput(channel); 
                break;
            case eDouState_High:
                douSetHigh(channel); douSetOutput(channel);
                break;
        }
    }
}

//==============================================================================
// Exported functions
//==============================================================================
void setDouState(eDouChannel channel, eDouState state)
{
    if (channel < eDouChannel_count) {
        if (state < eDouState_count) {
            douStatus[channel] = state;
        }
    }
}

void douTask(void) 
{
    task_open();
    
    while (1) 
    {
        refreshOutputs();
        task_wait(MS_TO_TICKS(DOU_TASK_PERIOD));
    }
    
    task_close();
}
