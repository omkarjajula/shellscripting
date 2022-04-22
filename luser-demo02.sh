#!/bin/bash

#display uid username of the user
#display if the user is the root or not


   echo "your uid is ${UID}"
 #  USER_NAME=$(id -un)
   USER_NAME=`id -un`
   echo "your name is ${USER_NAME}"

   if [[ "${UID}" -eq 0 ]]
   then
	   echo 'you are root'
   else
	   echo 'you are not root'
   fi

