#!/bin/bash
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
#    echo "  -c, --create     Create a new user account."
    echo "  -d, --delete     Delete an existing user account."
#    echo "  -r, --reset      Reset password for an existing user account."
#    echo "  -l, --list       List all user accounts on the system."
    echo "  -h, --help       Display this help and exit."
}
function user_delete {
read -p "Enter the username to delete: " username


if id "$username"
then
        #sudo userdel -r $username
        sudo userdel $username
        sudo sudo rm -rf /home/"$username"
        echo "$username deleted"
else
        echo "$username not available"
fi
}
case "$1" in
	-d|--delete)
		user_delete
		;;
	-h|--help)
		display_usage
		;;
	*)
		echo "inviled option "$1""
		display_usage
		;;
esac

