#!/bin/bash

##Create Backup##
source="/home/samir1/Script"
Destination="/home/samir1/BackUp/"

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
Desti="/home/samir1/BackUp/$timestamp"_backup.zip

kffs=$(zip -r $Desti $source)

if [ $? -eq 0 ]
then
	echo "Backup Completed"
else
	echo "Backup failed"
fi

find $Destination -type f -mtime +10
echo "$KASFv"
