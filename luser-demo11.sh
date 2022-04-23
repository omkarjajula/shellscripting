#!/bin/bash

#-l,-v,-s,


usage(){
  echo "Usage: ${0} [-vs][-l LENGTH]" >&2
  echo 'generate password'
  echo '-l Length specify the length'
  echo 
  exit 1
}


log(){
	local MESSAGE="${@}"
	if [[ "${VERBOSE}" = 'true' ]]
	then  
 	  echo "${MESSAGE}"
	fi
}

LENGTH=48

while getopts vl:s OPTION
do
	case ${OPTION} in
	  v)
	    VERBOSE='true'
	    log 'Verbose mode on'
	    ;;
	  l)
	    LENGTH="${OPTARG}"
	    ;;
	  s)
	    USE_SPECIAL_CHARACTER='true'
	    ;;
	  *)
	    usage
	    ;;
          esac
done


log 'generating a password'

PASSWORD=$(date +%s%N${RANDOM} | sha256sum | head -c${LENGTH})

if [[ "${USE_SPECIAL_CHARACTER}" = 'true' ]]
then
	log 'Selecting arandom special character'
	SPECIAL_CHARACTER=$(echo '!@#$%^&*()' | fold -w1 | shuf | head -c1)
	PASSWORD="${PASSWORD}${SPECIAL_CHARACTER}"
fi

log 'fone'
log 'hear is the password'

echo "${PASSWORD}"

exit 0
