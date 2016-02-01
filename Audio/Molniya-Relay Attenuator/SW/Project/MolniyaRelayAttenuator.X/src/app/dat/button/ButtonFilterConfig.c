//==============================================================================
// File:   ButtonFilterConfig.c
// Author: ivanvasilev
//
// Created on February 1, 2016, 5:07 PM
//==============================================================================

#include "../../hal/din/DinControl.h"
#include "ButtonFilterConfig.h"

//==============================================================================
// Exported functions
//==============================================================================
bool buttonReadInput(eButtonChannel channel)
{
    bool retVal = false;
    switch(channel) {
        case eButtonChannel_BUT1: 
            retVal = readDin(eDinChannel_BUT1); 
            break;
        case eButtonChannel_BUT2: 
            retVal = readDin(eDinChannel_BUT2); 
            break;
        case eButtonChannel_BUT3: 
            retVal = readDin(eDinChannel_BUT3); 
            break;
        case eButtonChannel_BUT4: 
            retVal = readDin(eDinChannel_BUT4); 
            break;
    }
    return retVal;
}