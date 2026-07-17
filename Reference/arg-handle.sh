#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 -[abc]"
    echo "  -a  Execute command for option A"
    echo "  -b  Execute command for option B"
    echo "  -c  Execute command for option C"
}

# Check if no arguments are provided or invalid arguments
if [ $# -eq 0 ] || [[ "$@" =~ ^-[^abc]+$ ]]; then
    usage
    exit 1
fi

# Iterate over each argument and handle it using a case statement
while getopts "abc" flag; do
    case $flag in
        a)
            echo "Option A selected. Executing command..."
            # Command for option A
            command_for_option_a
            ;;
        b)
            echo "Option B selected. Executing command..."
            # Command for option B
            command_for_option_b
            ;;
        c)
            echo "Option C selected. Executing command..."
            # Command for option C
            command_for_option_c
            ;;
        *)
            usage
            exit 1
            ;;
    esac
done

# Function implementations (you can replace these with your actual commands)
command_for_option_a() {
    echo "Executing specific command for option A"
}

command_for_option_b() {
    echo "Executing specific command for option B"
}

command_for_option_c() {
    echo "Executing specific command for option C"
}

