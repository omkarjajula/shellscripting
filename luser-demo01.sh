#!/bin/bash
# this script is my first script
# display 'hello'
echo 'hello'
 
# env variables
WORD='script' 

# display
echo "$WORD"
echo "this is a shell $WORD"
echo "${WORD}ing is fun"
ENDING='ed'
echo "this is ${WORD}${ENDING}"
