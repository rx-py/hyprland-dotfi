#!/bin/zsh

# Define log file
LOG_FILE=/var/log/custom/pacman-updates.log

# Function to display section headers
section_header() {
    echo "=================================="
    echo "$1"
    echo "=================================="
}

# Function to log command output to both terminal and log file
log_command() {
    local command="$1"
    section_header "Running: $command"
    if eval "$command" 2>&1 | tee -a "$LOG_FILE"; then
        echo "Command completed successfully."
    else
        echo "Error: Command failed. Check $LOG_FILE for details."
    fi
    echo
}

# Function to check package updates
run_check_updates() {
    section_header "checking Arch updates..."
    log_command "pacman -Qu"
    sleep 5
}


# Function to run package updates using pacman
run_pacman_updates() {
    section_header "Running Arch updates..."
    log_command "sudo pacman -Syyu"
    sleep 3
}

# Function to run package updates using yay
run_yay_updates() {
    section_header "Running yay updates..."
    log_command "yay -Syu --devel --noconfirm --needed"
    sleep 3
}

# Function to run oh-my-zsh updates
run_oh_my_zsh_updates() {
    section_header "Running oh-my-zsh updates..."
    log_command "zsh /usr/local/sbin/scriptx/omzupdate.sh"
    echo
}

# Main script
run_check_updates
run_pacman_updates
run_yay_updates
run_oh_my_zsh_updates

section_header "!!!! System updates completed !!!!"

