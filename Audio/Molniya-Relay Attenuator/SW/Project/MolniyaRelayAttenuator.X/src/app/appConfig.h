//==============================================================================
// File:   app.h
// Author: ivanvasilev
//
// Created on January 30, 2016, 12:54 PM
//==============================================================================

#ifndef APPCONFIG_H
#define	APPCONFIG_H

#include "hal/dou/DouControl.h"
#include "hal/din/DinControl.h"

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom macros
//==============================================================================
#define MAIN_CLOCK_PERIOD   5       // in ms
#define MS_TO_TICKS(x)      (x + (MAIN_CLOCK_PERIOD / 2) / MAIN_CLOCK_PERIOD)
    
#define DOU_TASK_FUNC       douTask
#define DOU_TASK_PERIOD     10      // in ms
#define DOU_TASK_PRIORITY   30
    
#define DIN_TASK_FUNC       dinTask
#define DIN_TASK_PERIOD     5
#define DIN_TASK_PRIORITY   10
    
#define APP_TASK_LIST   {\
    { 0, DOU_TASK_FUNC,     DOU_TASK_PRIORITY,  NULL, 0, 0 }, \
    { 0, DIN_TASK_FUNC,     DIN_TASK_PRIORITY,  NULL, 0, 0 }, \
}
    //{ 0, buttonTask,    10, NULL, 0, 0 }, \
    //{ 0, controlTask,   20, NULL, 0, 0 }, \
} 

#ifdef	__cplusplus
}
#endif

#endif	// APPCONFIG_H

