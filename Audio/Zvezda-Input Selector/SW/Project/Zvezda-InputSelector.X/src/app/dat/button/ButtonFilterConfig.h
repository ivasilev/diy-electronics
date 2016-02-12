/* 
 * File:   ButtonFilterConfig.h
 * Author: ivanvasilev
 *
 * Created on February 1, 2016, 5:07 PM
 */

#ifndef BUTTONFILTERCONFIG_H
#define	BUTTONFILTERCONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom types
//==============================================================================
typedef enum eButtonChannel_t 
{
    eButtonChannel_BUT1,
    eButtonChannel_BUT2,
    eButtonChannel_BUT3,
    eButtonChannel_BUT4,
    eButtonChannel_count
} eButtonChannel;

//==============================================================================
// Exported macros
//==============================================================================    

//==============================================================================
// Exported functions
//============================================================================== 
extern bool buttonReadInput(eButtonChannel channel);

#ifdef	__cplusplus
}
#endif

#endif	// BUTTONFILTERCONFIG_H

