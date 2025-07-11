#!/bin/bash

# backup.sh - Creates a compressed .tar.gz backup of a specified directory.
# Enhanced with functions for modularity.
# Author: D-Voncleph
# Date: July 5, 2025 (Modified: July 11, 2025 for functions)

# Define the backup destination directory
BACKUP_ROOT_DIR="$HOME/backups" # Your preferred location

# --- FUNCTIONS ---

# Function to generate a timestamped backup filename
# Arguments: 1 - source_directory_path (e.g., "~/Projects/my_project")
# Returns: Echoes the full path of the generated backup file.
generate_backup_filename () {
    local source_dir_path="$1"
    local dir_name=$(basename "$source_dir_path") # Get just the directory name
    local timestamp=$(date +%Y%m%d_%H%M%S) # Format: YYYYMMDD_HHMMSS

    # Combine directory name and timestamp for the backup file
    local backup_filename="${dir_name}_${timestamp}.tar.gz"

    # Echo the full path of the backup file so it can be captured by the caller
    echo "$BACKUP_ROOT_DIR/$backup_filename"
}

# Function to perform the actual tar command
# Arguments: 1 - source_directory (the directory to be archived)
#            2 - backup_file_path (the full path to the output .tar.gz file)
# Returns: The exit status of the 'tar' command (0 for success, non-zero for failure).
create_archive () {
    local source_dir="$1"
    local backup_file_path="$2"

    echo "Creating backup..."
    # -z: Compress archive with gzip
    # -c: Create a new archive
    # -v: Verbosely list files processed
    # -f: Use archive file or device ARCHIVE
    tar -zcvf "$backup_file_path" "$source_dir"

    # The exit status of the 'tar' command will automatically be the exit status of this function.
    # So, no explicit 'return' statement is needed here unless you want to change the status.
}

# --- MAIN SCRIPT EXECUTION ---

echo "--- Starting Backup Script ---"

# --- 1. Validate Input Argument ---
if [ "$#" -ne 1 ]; then
    echo "Error: Usage: $0 <directory_to_backup>"
    echo "Example: $0 ~/Projects/my_project"
    exit 1
fi

SOURCE_DIR="$1"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: '$SOURCE_DIR' is not a valid directory or does not exist."
    echo "Please provide a valid directory path to backup."
    exit 1
fi

# --- 2. Prepare Backup Destination ---
mkdir -p "$BACKUP_ROOT_DIR"
if [ "$?" -ne 0 ]; then
    echo "Error: Could not create backup directory '$BACKUP_ROOT_DIR'."
    exit 1
fi

# --- 3. Construct Backup Filename using the function ---
# Capture the output of the function into a variable
BACKUP_FULL_PATH=$(generate_backup_filename "$SOURCE_DIR")

echo "Source directory: '$SOURCE_DIR'"
echo "Backup file will be: '$BACKUP_FULL_PATH'"

# --- 4. Perform the Backup using the function ---
create_archive "$SOURCE_DIR" "$BACKUP_FULL_PATH"

# Check the exit status of the create_archive function (which is tar's exit status)
if [ "$?" -eq 0 ]; then
    echo "Success: Backup of '$SOURCE_DIR' created at '$BACKUP_FULL_PATH'"
    echo "Backup size: $(du -sh "$BACKUP_FULL_PATH" | awk '{print $1}')"
else
    echo "Error: Backup failed for '$SOURCE_DIR'."
    exit 1
fi

echo "--- Backup Script Finished ---"
