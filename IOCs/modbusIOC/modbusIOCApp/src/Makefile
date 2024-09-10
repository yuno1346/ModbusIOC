TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = modbusIOC
# modbusIOC.dbd will be created and installed
DBD += modbusIOC.dbd

# modbusIOC.dbd will be made up from these files:
modbusIOC_DBD += base.dbd

# Include dbd files from all support applications:
#modbusIOC_DBD += xxx.dbd
modbusIOC_DBD += calc.dbd
modbusIOC_DBD += asyn.dbd
modbusIOC_DBD += modbus.dbd

# Add all the support libraries needed by this IOC
#modbusIOC_LIBS += xxx

# modbusIOC_registerRecordDeviceDriver.cpp derives from modbusIOC.dbd
modbusIOC_SRCS += modbusIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
modbusIOC_SRCS_DEFAULT += modbusIOCMain.cpp
modbusIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#modbusIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
modbusIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

