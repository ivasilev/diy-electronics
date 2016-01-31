//==============================================================================
// File:   app.c
// Author: ivanvasilev
//
// Created on January 30, 2016, 12:32 PM
//==============================================================================

#include "app.h"
#include "appConfig.h"

//==============================================================================
// Local data definitions
//==============================================================================
static tTaskDescription taskList[] = APP_TASK_LIST;

//==============================================================================
// Local function declarations
//==============================================================================
static void initTasks(void);

//==============================================================================
// Local functions
//==============================================================================
static void initTasks(void) {
    for (unsigned int i=0; i < (sizeof(taskList) / sizeof(tTaskDescription)); i++) 
    {
        tTaskDescription* pTask = &taskList[i];
        pTask->id = task_create(pTask->proc, pTask->prio, pTask->msgPool, pTask->poolSize, pTask->msgSize);
    }
}

//==============================================================================
// Exported functions
//==============================================================================
void initApp(void) 
{
    initTasks();
}
