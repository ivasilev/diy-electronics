//============================================================================== 
// File:   RelayControl.c
// Author: ivanvasilev
//
// Created on February 09, 2016, 4:31 PM
//==============================================================================

#include "RelayControl.h"
#include "../../appConfig.h"
#include "../../../cocoos/cocoos.h"

//==============================================================================
// Local types
//==============================================================================
typedef enum eRelayInternalState_t {
    eStateReset,
    eStateShouldReset,
    eStateResetting,
    eStateSet,
    eStateShouldSet,
    eStateSetting,
    eStateUnknown,
    eState_count
} eRelayInternalState;

//==============================================================================
// Local data
//==============================================================================
static eRelayInternalState  relayState[eRelayChannel_count];

//==============================================================================
// Local function declarations
//==============================================================================
static void init();
static void process();

//==============================================================================
// Local functions
//==============================================================================
static void init()
{
    for (int channel = 0; channel < eButtonChannel_count; channel++)
    {
        relayState[channel] = eStateUnknown;    // leave state as it was 
    }
}

static void process() 
{
    for (int channel = 0; channel < eButtonChannel_count; channel++)
    {
        switch (relayState[channel]) 
        {
            case eStateReset:
            case eStateSet:
            case eStateUnknown:
                // nothing to do
                break;
                
            case eStateShouldReset:
                triggerReset(channel);
                relayState[channel] = eStateResetting;
                break;
            case eStateResetting:
                untrigger(channel);
                relayState[channel] = eStateReset;
                break;
    
            case eStateShouldSet:
                triggerSet(channel);
                relayState[channel] = eStateSetting;
                break;
            case eStateSetting:
                untrigger(channel);
                relayState[channel] = eStateSet;
                break;
                
            default:
                break;
        }
    }
}

//==============================================================================
// Exported functions
//==============================================================================
void relayTask(void) 
{

    
    task_open();
    
    init();
    while (1) 
    {
        process();
        
        task_wait(MS_TO_TICKS(RELAY_TASK_PERIOD));
    }
    
    task_close();
}

HRESULT  setRelayState(eRelayChannel channel, eRelayStatus status)
{
    HRESULT retVal = L_INVALIDARG;
    if (channel < eRelayChannel_count)
    {
        if (status < eRelayStatus_count)
        {
            switch (status)
            {
                case eRelayStatus_Set:
                    if ( eStateShouldSet != relayState[channel]) relayState[channel] = eStateShouldSet;
                    retVal = L_OK;
                    break;
                case eRelayStatus_Reset:
                    if ( eStateShouldReset != relayState[channel]) relayState[channel] = eStateShouldReset;
                    retVal = L_OK;
                    break;
                default:
                    break;
            }
        }
    }
    return retVal;
}
