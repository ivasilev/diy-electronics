/* 
 * File:   RelayControl.h
 * Author: ivanvasilev
 *
 * Created on February 9, 2016, 4:32 PM
 */

#ifndef RELAYCONTROL_H
#define	RELAYCONTROL_H

#include <stdbool.h>

#include "../../deftypes.h"

#include "RelayControlConfig.h"


#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef enum eRelayStatus_t 
{
    eRelayStatus_Reset,
    eRelayStatus_Set,
    eRelayStatus_NoChange,
    eRelayStatus_count
} eRelayStatus;

//==============================================================================
// Exported macros
//==============================================================================    

//==============================================================================
// Exported functions
//==============================================================================    
extern void relayTask();
extern HRESULT setRelayState(eRelayChannel, eRelayStatus);

#ifdef	__cplusplus
}
#endif

#endif	// RELAYCONTROL_H

