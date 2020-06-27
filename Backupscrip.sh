#!/bin/bash

echo $1
function Backup () {


if [ -f $1 ]

then
	#Back="/Users/akhadanga/$2/$(Basename ${1}).$(date +%F).$$" # BAckupfile,date and PID #$2 dynamically pass the folder
	Back="$2/$(Basename ${1}).$(date +%F).$$"
	echo "Backing up $1 to ${Back}"

echo $Back
	cp $1 $Back

fi

}

Backup  $1  $2 #Function called

if [ $? -eq 0 ] #if exit return code of previous function is o
then
echo "Backup Successfull"
else
	echo  "BAckup failed"
fi


