#!/bin/bash


PASSWORD=$(date +%s%N${RANDOM} | sha256sum | head -4c )
echo ${PASSWORD}
S=$(echo '!@#$%^&*()' | fold -w1 |shuf | head -c1)
echo "${PASSWORD}$S"
