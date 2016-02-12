#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/app/app/zvezda/ZvezdaControl.c src/app/dat/button/ButtonFilter.c src/app/dat/button/ButtonFilterConfig.c src/app/dat/relay/RelayControl.c src/app/dat/relay/RelayControlConfig.c src/app/hal/din/DinControl.c src/app/hal/din/DinControlConfig.c src/app/hal/dou/DouControl.c src/app/hal/dou/DouControlConfig.c src/app/app.c src/cocoos/os_assert.c src/cocoos/os_cbk.c src/cocoos/os_event.c src/cocoos/os_kernel.c src/cocoos/os_msgqueue.c src/cocoos/os_sem.c src/cocoos/os_task.c src/mcc_generated_files/eusart1.c src/mcc_generated_files/i2c1.c src/mcc_generated_files/interrupt_manager.c src/mcc_generated_files/mcc.c src/mcc_generated_files/pin_manager.c src/mcc_generated_files/tmr0.c src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1 ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1 ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1 ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1 ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1 ${OBJECTDIR}/src/app/hal/din/DinControl.p1 ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1 ${OBJECTDIR}/src/app/hal/dou/DouControl.p1 ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1 ${OBJECTDIR}/src/app/app.p1 ${OBJECTDIR}/src/cocoos/os_assert.p1 ${OBJECTDIR}/src/cocoos/os_cbk.p1 ${OBJECTDIR}/src/cocoos/os_event.p1 ${OBJECTDIR}/src/cocoos/os_kernel.p1 ${OBJECTDIR}/src/cocoos/os_msgqueue.p1 ${OBJECTDIR}/src/cocoos/os_sem.p1 ${OBJECTDIR}/src/cocoos/os_task.p1 ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1 ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1 ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/src/mcc_generated_files/mcc.p1 ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1 ${OBJECTDIR}/src/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1.d ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1.d ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1.d ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1.d ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1.d ${OBJECTDIR}/src/app/hal/din/DinControl.p1.d ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1.d ${OBJECTDIR}/src/app/hal/dou/DouControl.p1.d ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1.d ${OBJECTDIR}/src/app/app.p1.d ${OBJECTDIR}/src/cocoos/os_assert.p1.d ${OBJECTDIR}/src/cocoos/os_cbk.p1.d ${OBJECTDIR}/src/cocoos/os_event.p1.d ${OBJECTDIR}/src/cocoos/os_kernel.p1.d ${OBJECTDIR}/src/cocoos/os_msgqueue.p1.d ${OBJECTDIR}/src/cocoos/os_sem.p1.d ${OBJECTDIR}/src/cocoos/os_task.p1.d ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1.d ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1.d ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1.d ${OBJECTDIR}/src/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1.d ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1.d ${OBJECTDIR}/src/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1 ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1 ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1 ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1 ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1 ${OBJECTDIR}/src/app/hal/din/DinControl.p1 ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1 ${OBJECTDIR}/src/app/hal/dou/DouControl.p1 ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1 ${OBJECTDIR}/src/app/app.p1 ${OBJECTDIR}/src/cocoos/os_assert.p1 ${OBJECTDIR}/src/cocoos/os_cbk.p1 ${OBJECTDIR}/src/cocoos/os_event.p1 ${OBJECTDIR}/src/cocoos/os_kernel.p1 ${OBJECTDIR}/src/cocoos/os_msgqueue.p1 ${OBJECTDIR}/src/cocoos/os_sem.p1 ${OBJECTDIR}/src/cocoos/os_task.p1 ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1 ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1 ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/src/mcc_generated_files/mcc.p1 ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1 ${OBJECTDIR}/src/main.p1

# Source Files
SOURCEFILES=src/app/app/zvezda/ZvezdaControl.c src/app/dat/button/ButtonFilter.c src/app/dat/button/ButtonFilterConfig.c src/app/dat/relay/RelayControl.c src/app/dat/relay/RelayControlConfig.c src/app/hal/din/DinControl.c src/app/hal/din/DinControlConfig.c src/app/hal/dou/DouControl.c src/app/hal/dou/DouControlConfig.c src/app/app.c src/cocoos/os_assert.c src/cocoos/os_cbk.c src/cocoos/os_event.c src/cocoos/os_kernel.c src/cocoos/os_msgqueue.c src/cocoos/os_sem.c src/cocoos/os_task.c src/mcc_generated_files/eusart1.c src/mcc_generated_files/i2c1.c src/mcc_generated_files/interrupt_manager.c src/mcc_generated_files/mcc.c src/mcc_generated_files/pin_manager.c src/mcc_generated_files/tmr0.c src/main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F26K22
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1: src/app/app/zvezda/ZvezdaControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/app/zvezda" 
	@${RM} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1  src/app/app/zvezda/ZvezdaControl.c 
	@-${MV} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.d ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1: src/app/dat/button/ButtonFilter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/button" 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1  src/app/dat/button/ButtonFilter.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.d ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1: src/app/dat/button/ButtonFilterConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/button" 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1  src/app/dat/button/ButtonFilterConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.d ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/relay/RelayControl.p1: src/app/dat/relay/RelayControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/relay" 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/relay/RelayControl.p1  src/app/dat/relay/RelayControl.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/relay/RelayControl.d ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1: src/app/dat/relay/RelayControlConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/relay" 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1  src/app/dat/relay/RelayControlConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.d ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/din/DinControl.p1: src/app/hal/din/DinControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/din" 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/din/DinControl.p1  src/app/hal/din/DinControl.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/din/DinControl.d ${OBJECTDIR}/src/app/hal/din/DinControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/din/DinControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1: src/app/hal/din/DinControlConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/din" 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1  src/app/hal/din/DinControlConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.d ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/dou/DouControl.p1: src/app/hal/dou/DouControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/dou" 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/dou/DouControl.p1  src/app/hal/dou/DouControl.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/dou/DouControl.d ${OBJECTDIR}/src/app/hal/dou/DouControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/dou/DouControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1: src/app/hal/dou/DouControlConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/dou" 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1  src/app/hal/dou/DouControlConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.d ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/app.p1: src/app/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app" 
	@${RM} ${OBJECTDIR}/src/app/app.p1.d 
	@${RM} ${OBJECTDIR}/src/app/app.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/app.p1  src/app/app.c 
	@-${MV} ${OBJECTDIR}/src/app/app.d ${OBJECTDIR}/src/app/app.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/app.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_assert.p1: src/cocoos/os_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_assert.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_assert.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_assert.p1  src/cocoos/os_assert.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_assert.d ${OBJECTDIR}/src/cocoos/os_assert.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_assert.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_cbk.p1: src/cocoos/os_cbk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_cbk.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_cbk.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_cbk.p1  src/cocoos/os_cbk.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_cbk.d ${OBJECTDIR}/src/cocoos/os_cbk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_cbk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_event.p1: src/cocoos/os_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_event.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_event.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_event.p1  src/cocoos/os_event.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_event.d ${OBJECTDIR}/src/cocoos/os_event.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_event.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_kernel.p1: src/cocoos/os_kernel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_kernel.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_kernel.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_kernel.p1  src/cocoos/os_kernel.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_kernel.d ${OBJECTDIR}/src/cocoos/os_kernel.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_kernel.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_msgqueue.p1: src/cocoos/os_msgqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_msgqueue.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_msgqueue.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_msgqueue.p1  src/cocoos/os_msgqueue.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_msgqueue.d ${OBJECTDIR}/src/cocoos/os_msgqueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_msgqueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_sem.p1: src/cocoos/os_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_sem.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_sem.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_sem.p1  src/cocoos/os_sem.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_sem.d ${OBJECTDIR}/src/cocoos/os_sem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_sem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_task.p1: src/cocoos/os_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_task.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_task.p1  src/cocoos/os_task.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_task.d ${OBJECTDIR}/src/cocoos/os_task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/eusart1.p1: src/mcc_generated_files/eusart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/eusart1.p1  src/mcc_generated_files/eusart1.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/eusart1.d ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/i2c1.p1: src/mcc_generated_files/i2c1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/i2c1.p1  src/mcc_generated_files/i2c1.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/i2c1.d ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1: src/mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1  src/mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/mcc.p1: src/mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/mcc.p1  src/mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/mcc.d ${OBJECTDIR}/src/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1: src/mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1  src/mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.d ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/tmr0.p1: src/mcc_generated_files/tmr0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/tmr0.p1  src/mcc_generated_files/tmr0.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/tmr0.d ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/main.p1  src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1: src/app/app/zvezda/ZvezdaControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/app/zvezda" 
	@${RM} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1  src/app/app/zvezda/ZvezdaControl.c 
	@-${MV} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.d ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/app/zvezda/ZvezdaControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1: src/app/dat/button/ButtonFilter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/button" 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1  src/app/dat/button/ButtonFilter.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.d ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/button/ButtonFilter.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1: src/app/dat/button/ButtonFilterConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/button" 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1  src/app/dat/button/ButtonFilterConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.d ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/button/ButtonFilterConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/relay/RelayControl.p1: src/app/dat/relay/RelayControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/relay" 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/relay/RelayControl.p1  src/app/dat/relay/RelayControl.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/relay/RelayControl.d ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/relay/RelayControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1: src/app/dat/relay/RelayControlConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/dat/relay" 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1  src/app/dat/relay/RelayControlConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.d ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/dat/relay/RelayControlConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/din/DinControl.p1: src/app/hal/din/DinControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/din" 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/din/DinControl.p1  src/app/hal/din/DinControl.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/din/DinControl.d ${OBJECTDIR}/src/app/hal/din/DinControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/din/DinControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1: src/app/hal/din/DinControlConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/din" 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1  src/app/hal/din/DinControlConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.d ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/din/DinControlConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/dou/DouControl.p1: src/app/hal/dou/DouControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/dou" 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControl.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/dou/DouControl.p1  src/app/hal/dou/DouControl.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/dou/DouControl.d ${OBJECTDIR}/src/app/hal/dou/DouControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/dou/DouControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1: src/app/hal/dou/DouControlConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app/hal/dou" 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1.d 
	@${RM} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1  src/app/hal/dou/DouControlConfig.c 
	@-${MV} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.d ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/hal/dou/DouControlConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/app/app.p1: src/app/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/app" 
	@${RM} ${OBJECTDIR}/src/app/app.p1.d 
	@${RM} ${OBJECTDIR}/src/app/app.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/app/app.p1  src/app/app.c 
	@-${MV} ${OBJECTDIR}/src/app/app.d ${OBJECTDIR}/src/app/app.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/app/app.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_assert.p1: src/cocoos/os_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_assert.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_assert.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_assert.p1  src/cocoos/os_assert.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_assert.d ${OBJECTDIR}/src/cocoos/os_assert.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_assert.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_cbk.p1: src/cocoos/os_cbk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_cbk.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_cbk.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_cbk.p1  src/cocoos/os_cbk.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_cbk.d ${OBJECTDIR}/src/cocoos/os_cbk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_cbk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_event.p1: src/cocoos/os_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_event.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_event.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_event.p1  src/cocoos/os_event.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_event.d ${OBJECTDIR}/src/cocoos/os_event.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_event.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_kernel.p1: src/cocoos/os_kernel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_kernel.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_kernel.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_kernel.p1  src/cocoos/os_kernel.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_kernel.d ${OBJECTDIR}/src/cocoos/os_kernel.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_kernel.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_msgqueue.p1: src/cocoos/os_msgqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_msgqueue.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_msgqueue.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_msgqueue.p1  src/cocoos/os_msgqueue.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_msgqueue.d ${OBJECTDIR}/src/cocoos/os_msgqueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_msgqueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_sem.p1: src/cocoos/os_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_sem.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_sem.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_sem.p1  src/cocoos/os_sem.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_sem.d ${OBJECTDIR}/src/cocoos/os_sem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_sem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/cocoos/os_task.p1: src/cocoos/os_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/cocoos" 
	@${RM} ${OBJECTDIR}/src/cocoos/os_task.p1.d 
	@${RM} ${OBJECTDIR}/src/cocoos/os_task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/cocoos/os_task.p1  src/cocoos/os_task.c 
	@-${MV} ${OBJECTDIR}/src/cocoos/os_task.d ${OBJECTDIR}/src/cocoos/os_task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/cocoos/os_task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/eusart1.p1: src/mcc_generated_files/eusart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/eusart1.p1  src/mcc_generated_files/eusart1.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/eusart1.d ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/eusart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/i2c1.p1: src/mcc_generated_files/i2c1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/i2c1.p1  src/mcc_generated_files/i2c1.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/i2c1.d ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1: src/mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1  src/mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/mcc.p1: src/mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/mcc.p1  src/mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/mcc.d ${OBJECTDIR}/src/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1: src/mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1  src/mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.d ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/mcc_generated_files/tmr0.p1: src/mcc_generated_files/tmr0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/mcc_generated_files/tmr0.p1  src/mcc_generated_files/tmr0.c 
	@-${MV} ${OBJECTDIR}/src/mcc_generated_files/tmr0.d ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/mcc_generated_files/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/main.p1  src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s" --msgdisable=520       --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s" --msgdisable=520    --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/MolniyaRelayAttenuator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
