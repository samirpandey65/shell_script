#!/bin/bash
source=/home/samir1/Script

time=$(date '+%Y-%m-%d-%H-%M-%S')
sjsvd=$(ls -tl /home/samir1/BackUp/)
backup="/home/samir1/BackUp/${time}"_ba.zip
hfgva=$(zip -r $backup $source)

if [ $? = o ]
then
	echo "Backup cpmpleted: $backup"
else
	echo "Backup failed"
fi

path="/home/samir1/BackUp/*"

hgacKD=$(ls -t | head -10)
kghvv=$(find /home/samir1/BackUp/ -type f -mmin +51 -exec rm -f {} \;)

if [ $? = 0 ]
then
        echo "60 min older file deleted: $kghvv"
else
        echo "File deletion failed: $kghvv"
fi
