#!/bin/bash
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  -c, --create     Create a new user account."
    #echo "  -d, --delete     Delete an existing user account."
    #echo "  -r, --reset      Reset password for an existing user account."
    #echo "  -l, --list       List all user accounts on the system."
    echo "  -h, --help       Display this help and exit."
}

function user_create {
read -p "Please enter username: " username


if id "$username"
then
	echo "$username already available:"
else
	read -p "Please enter password " password

	sudo useradd -m -p "$password" "$username"
	echo "$username created"

fi
}

case "$1" in
	-c|--create)
		user_create
		;;
	-h|--help)
		display_usage
		;;
	*)
		echo "inviled option $1"
		display_usage
		;;
esac

