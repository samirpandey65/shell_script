#!/bin/bash
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  -c, --create     Create a new user account."
    echo "  -d, --delete     Delete an existing user account."
    echo "  -r, --reset      Reset password for an existing user account."
    echo "  -l, --list       List all user accounts on the system."
    echo "  -h, --help       Display this help and exit."
}

function user_create {
    read -p "Please enter username: " username

    if id "$username" &>/dev/null; then
        echo "$username already exists."
    else
        read -p "Please enter $username password: " password
        sudo useradd -m -p "$password" "$username"
        echo "$username created successfully."
    fi
}

function user_delete {
    read -p "Enter the username to delete: " username

    if id "$username" &>/dev/null; then
        sudo userdel "$username"
        sudo rm -rf /home/"$username"
        echo "$username deleted successfully."
    else
        echo "$username does not exist."
    fi
}

function user_reset {
    read -p "Enter the username to reset password: " username

    if id "$username" &>/dev/null; then
        read -p "Please enter new password for $username: " password
        echo "$username:$password" | sudo chpasswd
        echo "$username password updated successfully.."
    else
        echo "$username does not exist."
    fi
}

function user_list {
    cat /etc/passwd | awk -F: '{print $1, "(UID: "$3")"}'
}

# Handle command line arguments
case "$1" in
    -c|--create)
        user_create
        ;;
    -d|--delete)
        user_delete
        ;;
    -r|--reset)
        user_reset
        ;;
    -l|--list)
        user_list
        ;;
    -h|--help)
        display_usage
        ;;
    *)
        echo "Invalid option: $1"
        display_usage
        ;;
esac

