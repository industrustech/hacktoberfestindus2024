#!/bin/bash

# Function to display the warning message
function warning_prompt() {
    echo "Warning: You are about to launch the Django e-commerce application."
    echo "Make sure you have all necessary services (like PostgreSQL) running."
    echo "Do you want to proceed? (yes/no)"
    read user_input

    if [[ "$user_input" != "yes" ]]; then
        echo "Launch aborted. Exiting..."
        exit 1
    fi
}

# Function to schedule the launch
function schedule_launch() {
    echo "When would you like to launch the application? (in seconds)"
    read delay
    echo "Application will launch in $delay seconds."
    sleep $delay
}

# Function to start Django server
function start_django_server() {
    echo "Starting the Django development server..."
    
    # Check if manage.py exists in the current directory
    if [ ! -f "manage.py" ]; then
        echo "Error: manage.py not found in the current directory."
        exit 1
    fi

    # Start the server
    python3 manage.py runserver
}

# Main script execution
warning_prompt   # Prompt the user with a warning message
schedule_launch  # Ask for schedule and wait before launch
start_django_server  # Start the Django application

