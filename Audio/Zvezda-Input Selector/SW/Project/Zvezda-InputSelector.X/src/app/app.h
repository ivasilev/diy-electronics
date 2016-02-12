//==============================================================================
// File:   app.h
// Author: ivanvasilev
//
// Created on January 30, 2016, 12:32 PM
//==============================================================================

#ifndef APP_H
#define	APP_H

#include "../cocoos/cocoos.h"

#ifdef	__cplusplus
extern "C" {
#endif

//==============================================================================
// Custom type definitions
//==============================================================================
typedef struct tTaskDescription_t {
    uint8_t         id;
    taskproctype    proc;
    uint8_t         prio;
    Msg_t*          msgPool;
    uint8_t         poolSize;
    uint16_t        msgSize;
} tTaskDescription;

//==============================================================================
// Exported Function declarations
//==============================================================================
void initApp(void);

#ifdef	__cplusplus
}
#endif

#endif	// APP_H

