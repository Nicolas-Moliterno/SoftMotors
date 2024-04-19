#!/home/nicolas/EPICS/SOFTs/swcmotors/iocs/motorSimIOC/bin/linux-x86_64/motorSim

< envPaths

dbLoadDatabase("$(TOP)/dbd/motorSim.dbd")
motorSim_registerRecordDeviceDriver(pdbbase)

# Use a local configuration if axes need individual customization
#!< motorSim.cmd
# Use a default, 8-axis configuration if axes can start with identical settings
< motorSim.iocsh

iocInit

## motorUtil (allstop & alldone)
#motorUtilInit("IOC:")

# Boot complete
date
