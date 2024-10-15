#!/bin/bash
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
#    echo "  -c, --create     Create a new user account."
#    echo "  -d, --delete     Delete an existing user account."
    echo "  -r, --reset      Reset password for an existing user account."
#    echo "  -l, --list       List all user accounts on the system."
    echo "  -h, --help       Display this help and exit."
}

function user_reset {
read -p "Enter the username to reset password: " username


if id "$username" &>/dev/null;
then
        read -p "Please enter new password" password
        sudo echo "$username:$password" | sudo chpasswd
        echo "$username password updated"
else
        echo "$username not available"
fi
}

case "$1" in
	-r|--reset)
		user_reset
		;;
	-h|--help)
		display_usage
		;;
	*)
		echo "Inviled option $1"
		display_usage
		;;
esac
