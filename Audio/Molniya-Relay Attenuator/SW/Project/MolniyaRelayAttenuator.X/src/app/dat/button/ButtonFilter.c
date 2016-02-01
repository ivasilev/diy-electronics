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
static void init();
static void update();
static void handleTransition(eButtonChannel channel, eButtonStatus newStatus);

//==============================================================================
// Local functions
//==============================================================================
static void init()
{
    for (int channel = 0; channel < eButtonChannel_count; channel++)
    {
        buttonStatus[channel] = (true == buttonReadInput(channel)) ? 
                    eButtonStatus_Pressed : eButtonStatus_NotPressed;
    }
}

static void update() 
{
    for (int channel = 0; channel < eButtonChannel_count; channel++)
    {
        eButtonStatus newStatus = (true == buttonReadInput(channel)) ? 
                            eButtonStatus_Pressed : eButtonStatus_NotPressed;
        if (buttonStatus[channel] != newStatus) 
        {
            handleTransition(channel, newStatus);
        }
        buttonStatus[channel] = newStatus;
    }
}

static void handleTransition(eButtonChannel channel, eButtonStatus newStatus)
{
    eButtonTransition transition = (eButtonStatus_Pressed == newStatus) ? 
                        eButtonTransition_Press : eButtonTransition_Release;
    
    int i = 0;
    while ((NULL != buttonCallbacks[i].callback) && (i < BUTTON_MAX_CALLBACKS))
    {
        if ((buttonCallbacks[i].channel == channel) && 
            (buttonCallbacks[i].transition == transition))
        {
            buttonCallbacks[i].callback();
        }
        i++;
    }
}

//==============================================================================
// Exported functions
//==============================================================================
void buttonTask(void) 
{

    
    task_open();
    
    init();
    while (1) 
    {
        update();
        
        task_wait(MS_TO_TICKS(BUTTON_TASK_PERIOD));
    }
    
    task_close();
}

eButtonStatus readButton(eButtonChannel channel)
{
    if (channel < eButtonChannel_count)
    {
        return buttonStatus[channel];
    }
    return eButtonStatus_count;
}

HRESULT subscribeButtonTransition(eButtonChannel channel, eButtonTransition transition, buttonCallback callback)
{
    int i = 0;
    while (i < BUTTON_MAX_CALLBACKS)
    {
        if (NULL == buttonCallbacks[i].callback)
        {
            buttonCallbacks[i].callback = callback;
            buttonCallbacks[i].channel = channel;
            buttonCallbacks[i].transition = transition;
            return L_OK;
        }
        i++;
    }
    return L_NO_MEM;
}
