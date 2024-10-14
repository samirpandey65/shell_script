#!/bin/bash

path="/home/samir1/BackUp/*"

hgacKD=$(ls -t | head -10)
kghvv=$(find /home/samir1/BackUp/ -type f -mmin +51 -exec rm -f {} \;)

if [ $? = 0 ]
then
        echo "60 min older file deleted: $kghvv"
else
        echo "File deletion failed: $kghvv"
fi

