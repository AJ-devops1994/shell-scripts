#!/bin/bash

#read -p "Enter the file name: " filename
if [$# -eq 0 ]
then
	echo "please pass a file as an agument"
	echo "usage ./file_exists.sh <file_path>
	exit1
fi 

if [ -f $1 ]; then
       echo "$1 file exists"
else
	echo " $1 file does not exist"
fi	
