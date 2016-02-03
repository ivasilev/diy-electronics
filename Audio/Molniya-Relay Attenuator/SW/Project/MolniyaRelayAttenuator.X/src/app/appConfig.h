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
#include "dat/button/ButtonFilter.h"
#include "app/zvezda/ZvezdaControl.h"

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom macros
//==============================================================================
#define MAIN_CLOCK_PERIOD       5       // in ms
#define MS_TO_TICKS(x)          ((x + (MAIN_CLOCK_PERIOD / 2)) / MAIN_CLOCK_PERIOD)
        
#define DIN_TASK_FUNC           dinTask
#define DIN_TASK_PERIOD         5
#define DIN_TASK_PRIORITY       10

#define BUTTON_TASK_FUNC        buttonTask
#define BUTTON_TASK_PERIOD      5
#define BUTTON_TASK_PRIORITY    20   

#define ZVEZDA_TASK_FUNC        zvezdaTask
#define ZVEZDA_TASK_PERIOD      10
#define ZVEZDA_TASK_PRIORITY    30

#define DOU_TASK_FUNC           douTask
#define DOU_TASK_PERIOD         10      // in ms
#define DOU_TASK_PRIORITY       40
    
#define APP_TASK_LIST   {\
    { 0, DIN_TASK_FUNC,     DIN_TASK_PRIORITY,      NULL, 0, 0 }, \
    { 0, BUTTON_TASK_FUNC,  BUTTON_TASK_PRIORITY,   NULL, 0, 0 }, \
    { 0, DOU_TASK_FUNC,     DOU_TASK_PRIORITY,      NULL, 0, 0 }, \
    { 0, ZVEZDA_TASK_FUNC,  ZVEZDA_TASK_PRIORITY,   NULL, 0, 0 }, \
}

#ifdef	__cplusplus
}
#endif

#endif	// APPCONFIG_H

