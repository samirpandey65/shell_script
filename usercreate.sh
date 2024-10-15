#!/bin/bash

read -p "Please enter username: " username


if id "$username"
then
	echo "$username already available:"
else
	echo "Please enter $username password"
	read password
	encrypted_password=$(openssl passwd -6 "$password")
	useradd -m -p "$encrypted_password" "$username"

#	useradd -m -p $password $username
	echo "$username created"

fi
