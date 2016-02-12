//============================================================================== 
// File:   DinControl.c
// Author: ivanvasilev
//
// Created on January 31, 2016, 7:36 PM
//==============================================================================


#include "DinControl.h"
#include "../../appConfig.h"
#include "../../../cocoos/cocoos.h"

//==============================================================================
// Local data
//==============================================================================
static eDinStatus   dinStatus[eDinChannel_count];
static uint8_t      inputStatus[eDinChannel_count];
static const eDinPinConfig dinConfig[eDinChannel_count] = DIN_CONFIG;

//==============================================================================
// Local function declarations
//==============================================================================
static void init();
static void readInputs();
static void filter();
static void refreshInputs();
static eDinStatus calculateNoFilter(uint8_t input);
static eDinStatus calculateFastFilter(uint8_t input);
static eDinStatus calculateSlowFilter(uint8_t input);
static eDinStatus calculateHysteresis(uint8_t input, eDinStatus currentStatus);
static uint8_t    calculateHammingWeight(uint8_t input);

//==============================================================================
// Local functions
//==============================================================================
static uint8_t calculateHammingWeight(uint8_t input)
{
    // sparse-ones hamming weight - http://bisqwit.iki.fi/source/misc/bitcounting/#SparseOnes
    uint8_t count = 0;
    while (input)
    {
        ++count;
        input &= (input - 1); // Zero the lowest-order one-bit
    }
    return count;
}

static eDinStatus calculateNoFilter(uint8_t input)
{
    return ((uint8_t)0x01 == (uint8_t)(input & (uint8_t)0x01)) ? eDinStatus_High : eDinStatus_Low ;
}

static eDinStatus calculateFastFilter(uint8_t input)
{
    // we're interested in the 3 LSB
    input = input & 0x07;
    if (calculateHammingWeight(input) >= 2) return eDinStatus_High;
    return eDinStatus_Low;
}

static eDinStatus calculateSlowFilter(uint8_t input)
{
    // we're interested in the 7 LSB
    input = input & 0x7F;
    if (calculateHammingWeight(input) >= 4) return eDinStatus_High;
    return eDinStatus_Low;
}

static eDinStatus calculateHysteresis(uint8_t input, eDinStatus currentStatus)
{
    eDinStatus retVal = eDinStatus_Unknown;
    if (eDinStatus_Low == currentStatus) 
    {
        if ((input & 0x03) == 0x03) retVal = eDinStatus_High;
    } 
    else if (eDinStatus_High == currentStatus)
    {
        if ((input & 0x03) == 0x00) retVal = eDinStatus_Low;
    } else {
        retVal = calculateNoFilter(input);
    }
    return retVal;
}

static void init() 
{
    for (int channel = 0; channel < eDinChannel_count; channel++)
    {
        dinStatus[channel] = dinConfig[channel].initialStatus;
        if (eDinStatus_High == dinConfig[channel].initialStatus) 
        {
            inputStatus[channel] = 0xFF;
        } 
        else 
        {
            inputStatus[channel] = 0x0;
        }
    }
}

static void readInputs()
{
    for (uint8_t channel = 0; channel < eDinChannel_count; channel++)
    {
        uint8_t current = (true == dinReadInput(channel)) ? 0x01 : 0;
        inputStatus[channel] = (uint8_t)(inputStatus[channel] << 1);
        inputStatus[channel] = (uint8_t)((inputStatus[channel] & 0xFE) | current);
    }
}

static void filter()
{
    for (int channel = 0; channel < eDinChannel_count; channel++)
    {
        eDinStatus pinStatus = dinStatus[channel];
        switch (dinConfig[channel].filterMode) 
        {
            case eDinFilterMode_None:
                pinStatus = calculateNoFilter(inputStatus[channel]);
                break;
            case eDinFilterMode_Fast:
                pinStatus = calculateFastFilter(inputStatus[channel]);
                break;
            case eDinFilterMode_Slow:
                pinStatus = calculateSlowFilter(inputStatus[channel]);
                break;
            case eDinFilterMode_Hysteresis:
                pinStatus = calculateHysteresis(inputStatus[channel], pinStatus);
                break;
            default:
                break;
        }
        if (eDinStatus_Unknown != pinStatus) 
        {
            dinStatus[channel] = pinStatus;
        }
    }
}

static void refreshInputs() 
{
    readInputs();
    filter();
}

//==============================================================================
// Exported functions
//==============================================================================
void dinTask(void) 
{
    task_open();
    
    init();   
    while (1) 
    {
        refreshInputs();
        task_wait(MS_TO_TICKS(DIN_TASK_PERIOD));
    }
    
    task_close();
}

eDinStatus readDin(eDinChannel channel)
{
    eDinStatus retVal = eDinStatus_Unknown;
    if (channel < eDinChannel_count)
    {
        if (false == dinConfig[channel].invert) 
        {
            retVal = dinStatus[channel];
        } 
        else 
        { 
            if (eDinStatus_High == dinStatus[channel]) 
            {
                retVal = eDinStatus_Low;
            }
            else if (eDinStatus_Low == dinStatus[channel]) 
            {
                retVal = eDinStatus_High;
            }
        }
    }
    return retVal;
}
