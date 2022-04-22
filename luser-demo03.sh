#!/bin/bash

echo "${UID}"

UID_TO_TEST_FOR='1000'
IF [[ ""${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "your UID does not match ${UID_TO_TEST_FOR}"
	exit 1

