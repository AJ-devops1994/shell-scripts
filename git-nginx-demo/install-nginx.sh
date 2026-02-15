#!/bin/bash

# this script is to install and start nginx
sudo apt-get update -y

sudo apt install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx


echo "nginx installed"

