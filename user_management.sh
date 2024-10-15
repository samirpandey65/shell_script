#!/bin/bash
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  -c"
    echo "  -d"
    echo "  -r"
    echo "  -l"
    echo "  -h"
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
    -c)
        user_create
        ;;
    -d)
        user_delete
        ;;
    -r)
        user_reset
        ;;
    -l)
        user_list
        ;;
    -h)
        display_usage
        ;;
    *)
        echo "Invalid option: $1"
        display_usage
        ;;
esac

