#!/bin/bash
function crate_backup() {
time=$(date "+%Y-%m-%d-%H-%M-%S")

####Thi is backup destination directory#######
backup="/home/samir2/backup/${time}"_backup.zip

#####$1 is a source directory##
zip -r $backup $1
echo "Backup completed"
delete=$()

}
crate_backup $1

