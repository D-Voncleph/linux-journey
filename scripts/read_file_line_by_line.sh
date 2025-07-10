#!/bin/bash

# Script: read_file_line_by_line.sh
# Description: Reads a specified text file line by line, printing non-empty lines to the screen.
#              Exits with an error if the file is not provided, does not exist, or isn't readable.

echo "--- Starting File Reader ---"

# 1. Check if a file path argument was provided
if [ ""$#"" -ne 1 ]; then
    echo "ERROR: Usage: $0 <file_path>"
    echo "Please provide the path to the text file you want to read."
    exit 1 # Exit with an error status
fi

file_path=""$1"" # Get the file path from the first command-line argument

# 2. Check if the file exists and is a regular file
if [ ! -f ""$file_path"" ]; then
    echo "ERROR: File not found: '$file_path'"
    exit 1 # Exit with an error status
fi

# 3. Check if the file is readable
if [ ! -r ""$file_path"" ]; then
    echo "ERROR: File is not readable: '$file_path'"
    echo "Please check file permissions."
    exit 1 # Exit with an error status
fi

echo "Reading file: '$file_path'"
echo "--------------------------"

# Use a while loop to read the file line by line
# IFS= prevents leading/trailing whitespace trimming
# read -r prevents backslash escapes from being interpreted
while IFS= read -r line; do
    # Skip empty lines (lines that contain no characters)
    if [ -n "$line" ]; then # -n checks if the string is not empty
        echo "$line"
    fi
done < ""$file_path"" # Redirect the file content as input to the while loop

echo "--------------------------"
echo "--- File reading complete ---"
