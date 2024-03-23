#!/bin/bash


# This script deisplays information about the system on whitch it is executed.

# Tell the user the script is starting.
echo "-------Starting the sysindo script-----"
echo "                                       "
sleep 2
# Display the hostname of the system
echo "                                       "
echo "--------------Hostname-----------------"
echo "                                       "
echo "Hostname: " 
hostname
sleep 2
# Display the current date and time when  this information was collected.
echo "                                       "
echo "----------Currant date and time--------"
echo "                                       "
echo "Time & date:"
date
sleep 2
# Display the kernel release folloed by the architecture.
echo "                                       "
echo "----Kernel release and architecture----"
echo "                                       "
echo "Kernel release:"
uname -r
sleep 1
echo "Architecture:"
uname -m
sleep 2
# Display the disk usage in human readable format
echo "                                      "
echo "----------------Disk Usage------------"
echo "                                      "
echo "Disk usage:"
df -h
sleep 2
# End the script by letting the user know that it`s done.
echo "--------------------------------------"
echo "Scrips was exicuted."
echo "by Daniel. J. Russell"


