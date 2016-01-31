//==============================================================================
// File:   douControlConfig.c
// Author: ivanvasilev
//
// Created on January 31, 2016, 18:21 PM
//==============================================================================

#include "../../../mcc_generated_files/mcc.h"
#include "DouControlConfig.h"

//==============================================================================
// Exported functions
//==============================================================================
void douSetOutput(eDouChannel douChannel)
{
    switch(douChannel) {
        case eDouChannel_R1S: OUT_R1S_SetDigitalOutput(); break;
        case eDouChannel_R1R: OUT_R1R_SetDigitalOutput(); break;
        case eDouChannel_R2S: OUT_R2S_SetDigitalOutput(); break;
        case eDouChannel_R2R: OUT_R2R_SetDigitalOutput(); break;
        case eDouChannel_R3S: OUT_R3S_SetDigitalOutput(); break;
        case eDouChannel_R3R: OUT_R3S_SetDigitalOutput(); break;
        case eDouChannel_Led1: OUT_LED1_SetDigitalOutput(); break;
        case eDouChannel_Led2: OUT_LED2_SetDigitalOutput(); break;
        case eDouChannel_Led3: OUT_LED3_SetDigitalOutput(); break;
        case eDouChannel_Led4: OUT_LED4_SetDigitalOutput(); break;
        default:
            break;
    }
}

void douSetHighZ(eDouChannel douChannel)
{
    switch(douChannel) {
        case eDouChannel_R1S: OUT_R1S_SetDigitalInput(); break;
        case eDouChannel_R1R: OUT_R1R_SetDigitalInput(); break;
        case eDouChannel_R2S: OUT_R2S_SetDigitalInput(); break;
        case eDouChannel_R2R: OUT_R2R_SetDigitalInput(); break;
        case eDouChannel_R3S: OUT_R3S_SetDigitalInput(); break;
        case eDouChannel_R3R: OUT_R3R_SetDigitalInput(); break;
        case eDouChannel_Led1: OUT_LED1_SetDigitalInput(); break;
        case eDouChannel_Led2: OUT_LED2_SetDigitalInput(); break;
        case eDouChannel_Led3: OUT_LED3_SetDigitalInput(); break;
        case eDouChannel_Led4: OUT_LED4_SetDigitalInput(); break;
        default:
            break;
    }
}

void douSetHigh(eDouChannel douChannel)
{
    switch(douChannel) {
        case eDouChannel_R1S: OUT_R1S_SetHigh(); break;
        case eDouChannel_R1R: OUT_R1R_SetHigh(); break;
        case eDouChannel_R2S: OUT_R2S_SetHigh(); break;
        case eDouChannel_R2R: OUT_R2R_SetHigh(); break;
        case eDouChannel_R3S: OUT_R3S_SetHigh(); break;
        case eDouChannel_R3R: OUT_R3R_SetHigh(); break;
        case eDouChannel_Led1: OUT_LED1_SetHigh(); break;
        case eDouChannel_Led2: OUT_LED2_SetHigh(); break;
        case eDouChannel_Led3: OUT_LED3_SetHigh(); break;
        case eDouChannel_Led4: OUT_LED4_SetHigh(); break;
        default:
            break;
    }
}

void douSetLow(eDouChannel douChannel)
{
    switch(douChannel) {
        case eDouChannel_R1S: OUT_R1S_SetLow(); break;
        case eDouChannel_R1R: OUT_R1R_SetLow(); break;
        case eDouChannel_R2S: OUT_R2S_SetLow(); break;
        case eDouChannel_R2R: OUT_R2R_SetLow(); break;
        case eDouChannel_R3S: OUT_R3S_SetLow(); break;
        case eDouChannel_R3R: OUT_R3R_SetLow(); break;
        case eDouChannel_Led1: OUT_LED1_SetLow(); break;
        case eDouChannel_Led2: OUT_LED2_SetLow(); break;
        case eDouChannel_Led3: OUT_LED3_SetLow(); break;
        case eDouChannel_Led4: OUT_LED4_SetLow(); break;
        default:
            break;
    }
}
