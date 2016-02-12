/* 
 * File:   RelayControlConfig.h
 * Author: ivanvasilev
 *
 * Created on February 9, 2016, 4:33 PM
 */

#ifndef RELAYCONTROLCONFIG_H
#define	RELAYCONTROLCONFIG_H

#include "../../hal/dou/DouControl.h"

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef enum eRelayChannel_t 
{
    eRelayChannel_R1,
    eRelayChannel_R2,
    eRelayChannel_R3,
    eRelayChannel_count
} eRelayChannel;

typedef struct tRelayControl_t
{
    eDouChannel setPin;
    eDouChannel resetPin;
} tRelayControl;

//==============================================================================
// Exported macros
//==============================================================================    
#define RELAY_CONTROL_INIT { \
    /* eRelayChannel_R1 */{ eDouChannel_R1S, eDouChannel_R1R }, \
    /* eRelayChannel_R2 */{ eDouChannel_R2S, eDouChannel_R2R }, \
    /* eRelayChannel_R3 */{ eDouChannel_R3S, eDouChannel_R3R }, \
    }

//==============================================================================
// Exported functions
//============================================================================== 
extern void triggerSet(eRelayChannel);
extern void triggerReset(eRelayChannel);
extern void untrigger(eRelayChannel);

#ifdef	__cplusplus
}
#endif

#endif	// RELAYCONTROLCONFIG_H

