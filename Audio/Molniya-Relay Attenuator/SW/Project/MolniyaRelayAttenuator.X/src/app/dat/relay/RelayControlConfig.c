//==============================================================================
// File:   RelayControlConfig.c
// Author: ivanvasilev
//
// Created on February 9, 2016, 4:33 PM
//==============================================================================

#include "RelayControlConfig.h"

//==============================================================================
// Local data
//==============================================================================
static const tRelayControl controlData[] = RELAY_CONTROL_INIT;

//==============================================================================
// Exported functions
//==============================================================================
void triggerSet(eRelayChannel channel)
{
    if (channel < eRelayChannel_count) 
    {
        setDouState(controlData[channel].setPin, eDouState_High);
        setDouState(controlData[channel].resetPin, eDouState_Low);
    }
}

void triggerReset(eRelayChannel channel)
{
    if (channel < eRelayChannel_count) 
    {
        setDouState(controlData[channel].setPin, eDouState_Low);
        setDouState(controlData[channel].resetPin, eDouState_High);
    }
}

void untrigger(eRelayChannel channel)
{
    if (channel < eRelayChannel_count) 
    {
        setDouState(controlData[channel].setPin, eDouState_Low);
        setDouState(controlData[channel].resetPin, eDouState_Low);        
    }
}
