#!/bin/bash

service="nginx"
sudo apt-get update
sudo apt install $service
read -p "Do you want to check the status of $service?y/n: " status

echo "you have selected $status"
if [ $status = "y" ]; then
	systemctl status $service
else
	echo "skipped"
fi

