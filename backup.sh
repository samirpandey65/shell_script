#!/bin/bash

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
