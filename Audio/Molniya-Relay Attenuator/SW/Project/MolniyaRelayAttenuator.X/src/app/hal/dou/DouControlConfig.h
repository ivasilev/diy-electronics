/* 
 * File:   DouControlConfig.h
 * Author: ivanvasilev
 *
 * Created on January 30, 2016, 2:55 PM
 */

#ifndef DOUCONTROLCONFIG_H
#define	DOUCONTROLCONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef enum eDouChannel_t 
{
    eDouChannel_R1S,
    eDouChannel_R1R,
    eDouChannel_R2S,
    eDouChannel_R2R,
    eDouChannel_R3S,
    eDouChannel_R3R,
    eDouChannel_Led1,
    eDouChannel_Led2,
    eDouChannel_Led3,
    eDouChannel_Led4,
    eDouChannel_count
} eDouChannel;

//==============================================================================
// Exported macros
//==============================================================================    
#define DOU_INITIAL_STATE { \
    /*eDouChannel_R1S, */ eDouState_Low , \
    /*eDouChannel_R1R, */ eDouState_Low , \
    /*eDouChannel_R2S, */ eDouState_Low , \
    /*eDouChannel_R2R, */ eDouState_Low , \
    /*eDouChannel_R3S, */ eDouState_Low , \
    /*eDouChannel_R3R, */ eDouState_Low , \
    /*eDouChannel_Led1,*/ eDouState_Low , \
    /*eDouChannel_Led2,*/ eDouState_Low , \
    /*eDouChannel_Led3,*/ eDouState_Low , \
    /*eDouChannel_Led4,*/ eDouState_Low  \
}

//==============================================================================
// Exported functions
//============================================================================== 
extern void douSetOutput(eDouChannel);
extern void douSetHighZ(eDouChannel);
extern void douSetHigh(eDouChannel);
extern void douSetLow(eDouChannel);

#ifdef	__cplusplus
}
#endif

#endif	// DOUCONTROLCONFIG_H

