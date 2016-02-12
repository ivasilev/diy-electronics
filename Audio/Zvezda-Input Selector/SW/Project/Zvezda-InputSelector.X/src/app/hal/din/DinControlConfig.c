//==============================================================================
// File:   DinControlConfig.c
// Author: ivanvasilev
//
// Created on January 31, 2016, 18:21 PM
//==============================================================================

#include "../../../mcc_generated_files/mcc.h"
#include "DinControlConfig.h"

//==============================================================================
// Exported functions
//==============================================================================
bool dinReadInput(eDinChannel channel)
{
    bool retVal = false;
    switch(channel) {
        case eDinChannel_BUT1: 
            if (1 == IN_BUT1_GetValue()) retVal = true; 
            break;
        case eDinChannel_BUT2: 
            if (1 == IN_BUT2_GetValue())  retVal = true;
            break;
        case eDinChannel_BUT3: 
            if (1 == IN_BUT3_GetValue())  retVal = true;
            break;
        case eDinChannel_BUT4: 
            if (1 == IN_BUT4_GetValue())  retVal = true;
            break;
    }
    return retVal;
}