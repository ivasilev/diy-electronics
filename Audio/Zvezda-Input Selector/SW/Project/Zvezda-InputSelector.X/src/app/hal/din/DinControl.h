//==============================================================================
// File:   DinControl.h
// Author: ivanvasilev
//
// Created on January 31, 2016, 7:35 PM
//==============================================================================

#ifndef DINCONTROL_H
#define	DINCONTROL_H

#include <stdbool.h>

#include "DinControlConfig.h"


#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef enum eDinStatus_t 
{
    eDinStatus_Low,
    eDinStatus_High,
    eDinStatus_Unknown,
    eDinState_count
} eDinStatus;

typedef enum eDinFilterMode_t 
{
    eDinFilterMode_None,        // direct reading
    eDinFilterMode_Fast,        // 2 of 3
    eDinFilterMode_Slow,        // 4 of 7
    eDinFilterMode_Hysteresis,  // 2 consecutive for change
    eDinFilterMode_count
} eDinFilterMode;

typedef struct eDinPinConfig_t 
{
    eDinStatus      initialStatus;
    eDinFilterMode  filterMode;
    bool            invert;
} eDinPinConfig;

//==============================================================================
// Exported macros
//==============================================================================    

//==============================================================================
// Exported functions
//==============================================================================    
extern void dinTask();
extern eDinStatus readDin(eDinChannel);


#ifdef	__cplusplus
}
#endif

#endif	// DINCONTROL_H

