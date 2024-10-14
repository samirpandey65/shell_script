#!/bin/bash
function crate_backup() {
time=$(date "+%Y-%m-%d-%H-%M-%S")
<<<<<<< HEAD
dir=/home/samir1/backup
=======

>>>>>>> 95b389fc415bc42c8aafb4d626353adc3ad55a79
####Thi is backup destination directory#######
backup="/home/samir2/backup/${time}"_backup.zip

#####$1 is a source directory##
zip -r $backup $1
echo "Backup completed"
delete=$()

}
crate_backup $1

<<<<<<< HEAD
ls -t $dir | head -3
=======
>>>>>>> 95b389fc415bc42c8aafb4d626353adc3ad55a79
