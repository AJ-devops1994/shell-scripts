#!/bin/bash

<<usage
./function.sh hello

inside function call

install_package docker.io

usage

echo "$1 is the main argument passed to the script"

install_package() {
	echo "$1 is the local argument passed to the function"
	sudo apt-get install $1 -y
}

install_package docker.io 	#function call
