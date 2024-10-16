#!/bin/bash

read -p "Please enter service name: " service
AHSG=$(sudo systemctl is-active $service)

if  [ "$AHSG" = "active" ];then
        echo "$service is running"
        read -p "Want to stop? (y/n): " stop
        if [ "$stop" = "y" ];then
                sudo systemctl stop $service
                echo "$service stopped"
        else
                echo "$service running"
        fi
else
        echo "$service is not running"
        read -p "Want to restart? (y/n): " ans
        if [ "$ans" = "y" ];then
                sudo systemctl restart $service
                echo "$service restarted"
	else

                echo "$service not running"
        fi
fi
