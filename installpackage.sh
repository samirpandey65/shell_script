#!/bin/bash
<<note
This script install
Nginx
note

echo "###########Nginx installination start################"
sudo apt update
sudo apt upgrade -y
sudo apt install nginx -y
sudo systemctl restart nginx
sudo systemctl enable nginx
echo "###########Nginx installination completed################"



echo "###########"$1"installination start################"
sudo apt update
sudo apt upgrade -y
sudo apt install "$1" -y
sudo systemctl restart "$1"
sudo systemctl enable "$1"
echo "###########$1 installination completed################"

