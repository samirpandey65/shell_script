#!/bin/bash
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
#    echo "  -c, --create     Create a new user account."
#    echo "  -d, --delete     Delete an existing user account."
#    echo "  -r, --reset      Reset password for an existing user account."
    echo "  -l, --list       List all user accounts on the system."
    echo "  -h, --help       Display this help and exit."
}

function user_list {
cat /etc/passwd | awk -F: '{print $1, "(UID: "$3")"}'
}

case "$1" in
	-l|--list)
		user_list
		;;
	-h|--help)
		display_usage
		;;
	*)
		echo "Inviled option $1"
		display_usage
		;;
esac
