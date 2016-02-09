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
#include "../../dat/relay/RelayControl.h"

//==============================================================================
// Local types
//==============================================================================
typedef enum eInputChannel_t
{
    eInputChannel_1,
    eInputChannel_2,
    eInputChannel_3,
    eInputChannel_4,
    eInputChannel_count
} eInputChannel;

typedef struct tInputChannelConfig_t
{
    eButtonChannel  button;
    buttonCallback  buttonCallback;
    eDouChannel     led;
    eRelayStatus    relayState[eRelayChannel_count];
} tInputChannelConfig;

//==============================================================================
// Local defines
//==============================================================================
#define INPUT_CHANNEL_INIT { \
    /* eInputChannel_1 */ { eButtonChannel_BUT1, onButton1Pressed, eDouChannel_Led1, { eRelayStatus_Reset,    eRelayStatus_NoChange,  eRelayStatus_Reset  } }, \
    /* eInputChannel_2 */ { eButtonChannel_BUT2, onButton2Pressed, eDouChannel_Led2, { eRelayStatus_Set,      eRelayStatus_NoChange,  eRelayStatus_Reset  } }, \
    /* eInputChannel_3 */ { eButtonChannel_BUT3, onButton3Pressed, eDouChannel_Led3, { eRelayStatus_NoChange, eRelayStatus_Reset,     eRelayStatus_Set    } }, \
    /* eInputChannel_4 */ { eButtonChannel_BUT4, onButton4Pressed, eDouChannel_Led4, { eRelayStatus_NoChange, eRelayStatus_Set,       eRelayStatus_Set    } }, \
    }

//==============================================================================
// Local function declarations
//==============================================================================
static void init();
static void step();

static void onButton1Pressed();
static void onButton2Pressed();
static void onButton3Pressed();
static void onButton4Pressed();

//==============================================================================
// Local data
//==============================================================================
static const tInputChannelConfig channelConfig[] = INPUT_CHANNEL_INIT;

static int currentChannel = -1;
static int newChannel;
static void setRelays(eRelayStatus[eRelayChannel_count]);

//==============================================================================
// Local functions
//==============================================================================
static void onButton1Pressed()
{
}

static void onButton2Pressed()
{
}

static void onButton3Pressed()
{
}

static void onButton4Pressed()
{
}

static void init() 
{
    int i = 0;
    while (NULL != channelConfig[i].buttonCallback)
    {
        subscribeButtonTransition(channelConfig[i].button, eButtonTransition_Press, channelConfig[i].buttonCallback);
        douSetLow(channelConfig[i].led);
    }
}

static void step() 
{
}

static void setRelays(eRelayStatus[eRelayChannel_count]);

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