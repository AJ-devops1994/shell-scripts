#!/bin/bash

read -p "Enter a number: " Num
#num=-5
if [ $Num -lt 0 ]; then
	echo "$num is a negative number"
elif [ $Num -eq 0 ]; then
	echo "$Num is 0"
else
	echo "$Num is a positive number"
fi
