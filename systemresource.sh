#!/bin/bash

function serviver_utilization {
CPU=$(top -bn 1 | grep "%Cpu(s):" | awk '{print ($2 "%")}')

MEM=$(free | grep "Mem" | awk '{print ($3/$2 * 100"%")}')

Disk=$(df -h /| awk '{print $5}' | tail -1)

echo "CPU: $CPU
Mem: $MEM
Disk: $Disk"

}


function service_status {
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
}


function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo " 1 To check server utilization"
    echo " 2 To check service status"
    echo " 3 Display this help and exit."
}

while true;
do
read -p "Please seletet option (1, 2, 3): " options

case "$options" in
	1)
		serviver_utilization
		;;
	2)
		service_status
		;;
	3)
		echo "Existing Thank you!!!!!"
		exit 0
		;;
	*)
		echo "Inviled Option: ($1)  please selerect from below(1, 2, 3)"
		display_usage
		;;
esac
sleep 5;
done


