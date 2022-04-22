#!/bin/bash

#script create an account on local system prompted for account name and password
#ask use name
read -p "please enter your name " NAME
read -p "enter the comment for this name " COMMENT
read -p "enter password " PASS
useradd -c "$COMMENT" -m $NAME
echo $PASS | passwd --stdin $NAME
