#!../../bin/linux-x86_64/modbusIOC

#- You may have to change modbusIOC to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/modbusIOC.dbd"
modbusIOC_registerRecordDeviceDriver pdbbase

#drvModbusAsynConfigure(portName,
#                       tcpPortName,
#                       slaveAddress,
#                       modbusFunction,
#                       modbusStartAddress,
#                       modbusLength,
#                       dataType,
#                       pollMsec,
#                       plcType);

## Load record instances
#dbLoadTemplate "db/user.substitutions"
#dbLoadRecords "db/modbusIOCVersion.db", "user=kyh"
dbLoadRecords "db/modbusIOC.db", "user=kyh"

#- Set this to see messages from mySub
#-var mySubDebug 1

#- Run this to trace the stages of iocInit
#-traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=kyh"
