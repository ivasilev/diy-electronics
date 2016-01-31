/* 
 * File:   DouControl.h
 * Author: ivanvasilev
 *
 * Created on January 30, 2016, 1:09 PM
 */

#ifndef DOUCONTROL_H
#define	DOUCONTROL_H

#include "DouControlConfig.h"

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef enum eDouState_t 
{
    eDouState_Low,
    eDouState_High,
    eDouState_HighZ,
    eDouState_count
} eDouState;

//==============================================================================
// Exported macros
//==============================================================================    

//==============================================================================
// Exported functions
//==============================================================================    
extern void douTask();
extern void setDouState(eDouChannel channel, eDouState state);

#ifdef	__cplusplus
}
#endif

#endif	// DOUCONTROL_H

