#!/bin/bash

# backup.sh - Creates a compressed .tar.gz backup of a specified directory.
# Author: D-Voncleph
# Date: July 5, 2025

# Define the backup destination directory
BACKUP_ROOT_DIR="$HOME/backups" # Your preferred location

echo "--- Starting Backup Script ---"

# --- 1. Validate Input Argument ---
# Check if exactly one argument was provided ($# holds the number of arguments)
if [ "$#" -ne 1 ]; then
    echo "Error: Usage: $0 <directory_to_backup>"
    echo "Example: $0 ~/Projects/my_project"
    exit 1 # Exit with an error status
fi

SOURCE_DIR="$1" # The first argument passed to the script is the directory to backup

# Check if the provided path is a valid directory
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: '$SOURCE_DIR' is not a valid directory or does not exist."
    echo "Please provide a valid directory path to backup."
    exit 1 # Exit with an error status
fi

# --- 2. Prepare Backup Destination ---
# Create the backup root directory if it doesn't exist
mkdir -p "$BACKUP_ROOT_DIR"
if [ "$?" -ne 0 ]; then
    echo "Error: Could not create backup directory '$BACKUP_ROOT_DIR'."
    exit 1
fi

# --- 3. Construct Backup Filename ---
# Get just the name of the source directory (e.g., "linux-journey" from "~/Projects/linux-journey")
DIR_NAME=$(basename "$SOURCE_DIR")

# Get current timestamp for unique filename
TIMESTAMP=$(date +%Y%m%d_%H%M%S) # Format: YYYYMMDD_HHMMSS

# Combine directory name and timestamp for the backup file
BACKUP_FILENAME="${DIR_NAME}_${TIMESTAMP}.tar.gz"
BACKUP_FULL_PATH="$BACKUP_ROOT_DIR/$BACKUP_FILENAME"

echo "Source directory: '$SOURCE_DIR'"
echo "Backup file will be: '$BACKUP_FULL_PATH'"

# --- 4. Perform the Backup ---
echo "Creating backup..."
tar -zcvf "$BACKUP_FULL_PATH" "$SOURCE_DIR"

# Check if the tar command was successful
if [ "$?" -eq 0 ]; then
    echo "Success: Backup of '$SOURCE_DIR' created at '$BACKUP_FULL_PATH'"
    echo "Backup size: $(du -sh "$BACKUP_FULL_PATH" | awk '{print $1}')" # Display backup size
else
    echo "Error: Backup failed for '$SOURCE_DIR'."
    exit 1
fi

echo "--- Backup Script Finished ---"
