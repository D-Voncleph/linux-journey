#!/bin/bash

# check_existence.sh - Script to check if a file or directory exists.
# Author: D-Voncleph
# Date: July 4, 2025 # (Adjust date if needed)

echo "--- File/Directory Existence Checker ---"

# Prompt the user for the path and store it in the 'ITEM_PATH' variable
read -p "Enter the full path to the file or directory: " ITEM_PATH

# Check if the item exists using the -e test condition
if [ -e "$ITEM_PATH" ]; then
    echo "Success: '$ITEM_PATH' exists on your system."
    # You could add more checks here, like if it's a file (-f) or directory (-d)
    # if [ -f "$ITEM_PATH" ]; then
    #     echo "It is a regular file."
    # elif [ -d "$ITEM_PATH" ]; then
    #     echo "It is a directory."
    # fi
else
    echo "Error: '$ITEM_PATH' does NOT exist on your system."
fi

echo "--- Check complete. ---"
