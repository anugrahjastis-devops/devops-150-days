#!/bin/bash

# Function to log messages with timestamp
log_message() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1"
}

# Function to check file status with error handling
check_file() {
    local FILE_PATH=$1
    log_message "Checking file: $FILE_PATH"
    
    if [ -f "$FILE_PATH" ]; then
        log_message "SUCCESS: File '$FILE_PATH' exists."
        return 0
    else
        log_message "ERROR: File '$FILE_PATH' missing!"
        return 1
    fi
}

# Execution Flow
echo "=========================================="
log_message "Starting Production Checks..."
echo "=========================================="

# Check an existing file
check_file "/etc/passwd"

# Check a non-existing file to test error status
check_file "/etc/fake_config.conf"
STATUS=$?

if [ $STATUS -ne 0 ]; then
    log_message "Critical configuration missing! Exiting with status $STATUS..."
    exit 1
fi
