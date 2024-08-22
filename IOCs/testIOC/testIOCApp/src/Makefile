TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = testIOC
# testIOC.dbd will be created and installed
DBD += testIOC.dbd

# testIOC.dbd will be made up from these files:
testIOC_DBD += base.dbd

# Include dbd files from all support applications:
#testIOC_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#testIOC_LIBS += xxx

# testIOC_registerRecordDeviceDriver.cpp derives from testIOC.dbd
testIOC_SRCS += testIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
testIOC_SRCS_DEFAULT += testIOCMain.cpp
testIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#testIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
testIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

