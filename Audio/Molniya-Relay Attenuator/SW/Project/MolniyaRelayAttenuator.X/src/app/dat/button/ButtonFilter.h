/* 
 * File:   ButtonFilter.h
 * Author: ivanvasilev
 *
 * Created on February 1, 2016, 5:06 PM
 */

#ifndef BUTTONFILTER_H
#define	BUTTONFILTER_H

#include <stdbool.h>

#include "ButtonFilterConfig.h"


#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef void(*buttonCallback)(void);
    
typedef enum eButtonStatus_t 
{
    eButtonStatus_NotPressed,
    eButtonStatus_Pressed,
    eButtonStatus_count
} eButtonStatus;

typedef enum eButtonTransition_t
{
    eButtonTransition_press,
    eButtonTransition_release,
    eButtonTransition_count
} eButtonTransition;

typedef struct buttonCallbackEntry_t
{
    buttonCallback      callback;
    eButtonChannel      channel;
    eButtonTransition   transition;
} buttonCallbackEntry;            

//==============================================================================
// Exported macros
//==============================================================================    
#define BUTTON_MAX_CALLBACKS    8

//==============================================================================
// Exported functions
//==============================================================================    
extern void buttonTask();
extern eButtonStatus readButton(eButtonChannel);
extern void subscribeButtonTransition(eButtonChannel, eButtonTransition, buttonCallback);

#ifdef	__cplusplus
}
#endif

#endif	// BUTTONFILTER_H

