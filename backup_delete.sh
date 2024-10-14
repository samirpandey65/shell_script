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


#hdsgfv=$(ls -tp $Destination | grep -v '/$' | tail -n +4)
hdsgfv=$(ls -tp $Destination | grep -v '/$' | tail -n +4 | xargs -I {} rm -- "$Destination/{}")
if [ $? = 0 ]
then
	echo "Keep 3 lates files and delete remaining"
else
	echo "File deletion failed "
fi
echo "$hdsgfv"
