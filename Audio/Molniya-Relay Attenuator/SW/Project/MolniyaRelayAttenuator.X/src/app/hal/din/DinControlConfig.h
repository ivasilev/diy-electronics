/* 
 * File:   DinControlConfig.h
 * Author: ivanvasilev
 *
 * Created on January 31, 2016, 7:36 PM
 */

#ifndef DINCONTROLCONFIG_H
#define	DINCONTROLCONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef enum eDinChannel_t 
{
    eDinChannel_BUT1,
    eDinChannel_BUT2,
    eDinChannel_BUT3,
    eDinChannel_BUT4,
    eDinChannel_count
} eDinChannel;

//==============================================================================
// Exported macros
//==============================================================================    
#define DIN_CONFIG { \
    /*eDinChannel_BUT1, */ { eDinStatus_High, eDinFilterMode_None,      true}, \
    /*eDinChannel_BUT2, */ { eDinStatus_High, eDinFilterMode_Fast,      true}, \
    /*eDinChannel_BUT3, */ { eDinStatus_High, eDinFilterMode_Slow,      true}, \
    /*eDinChannel_BUT4, */ { eDinStatus_High, eDinFilterMode_Hysteresis,true} \
}

//==============================================================================
// Exported functions
//============================================================================== 
extern bool dinReadInput(eDinChannel channel);

#ifdef	__cplusplus
}
#endif

#endif	// DINCONTROLCONFIG_H

