#!/bin/bash


if [[ "${UID}" -ne 0 ]]
then 
echo 'please run with sudo or root'
exit 1
fi

read -p 'enter the user name: ' NAME
read -p 'enter comments' COMMENT
read -p 'enter the password: ' PASS

useradd -c "${COMMENT}" -m ${NAME}

#check if user add is created
if [[ "${?}" -ne 0 ]]
then
	echo 'the account could not be created'
	exit 1
fi

#set password

echo ${PASS} | passwd --stdin ${NAME}

if [[ "${?}" -ne 0 ]]
then    
        echo 'the PASS  could not be created'
        exit 1
fi     

passwd -e ${NAME}


# DISPLAY THE USERNAME PASSWRD AND HOST WHRER THE USER WAS CREATED

echo
echo 'username: '
echo "${NAME}"
echo
echo 'password: '
echo "${PASS}"
echo
echo 'hostname'
echo "${HOSTNAME}"
exit 0
