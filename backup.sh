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
