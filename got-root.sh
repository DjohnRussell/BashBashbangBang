#!/bin/bash

#  Determine if the user executing this script is the root user or not.

# Display the UID
echo "Your UID is ${UID}."

# Diplay if the user is the root user or not.

if [[ "${UID}" -eq 0 ]]
then
  echo "You are root"
  echo  "Instaling software...."
  sleep 2
  cmatrix
  sleep 2
  exit
  # The commands to install  the software.
else
  echo "You do not have permissions to install software"
fi
