#!/bin/bash
<<<<<<< HEAD
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
=======

function show_date() {
 echo "Todate is: $(date "+%Y-%m-%d-%H-%M-%S")"
}

function crate_backup() {
time=$(date "+%Y-%m-%d-%H-%M-%S")

####Thi is backup destination directory#######
backup="/home/samir2/backup/${time}"_backup.zip

#####$1 is a source directory##
zip -r $backup $1
echo "Backup completed"

}
crate_backup $1
show_date
show_date
>>>>>>> 44320d969edd35c508717ce621eef0a2cefc3fc0
