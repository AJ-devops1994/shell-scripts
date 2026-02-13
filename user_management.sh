#!/bin/bash

<<usage
-take username as input
-take passwd as input
-check if user already exist
-create the user
usage

create_user() {
read -p "Enter username: " username
read -p "Enter password: " passwd

if id $username &>/dev/null; then
	echo "user $username already exist"
	exit 1
else
	echo "user $username does not exist"
fi

sudo useradd -m $username -p $passwd

echo "user $username added successfully"
}


