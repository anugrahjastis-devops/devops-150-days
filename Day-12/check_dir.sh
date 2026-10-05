#!/bin/bash

# Directory & Backup Checker
read -p "Enter directory path to check: " DIR_PATH

if [ -d "$DIR_PATH" ]; then
    echo "SUCCESS: Directory '$DIR_PATH' exists!"
    echo "Total files inside: $(ls -1 "$DIR_PATH" | wc -l)"
else
    echo "WARNING: Directory '$DIR_PATH' does NOT exist."
fi
