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


path="/home/samir1/BackUp/*"

hgacKD=$(ls -t | head -10)
kghvv=$(find /home/samir1/BackUp/ -type f -mmin +70 -exec rm -f {} \;)

if [ $? = 0 ]
then
        echo "60 min older file deleted: $kghvv"
else
        echo "File deletion failed: $kghvv"
fi
