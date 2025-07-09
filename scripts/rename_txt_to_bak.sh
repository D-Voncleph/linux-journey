#!/bin/bash

# Script: rename_txt_to_bak.sh
# Description: Renames all .txt files in the current directory to .bak files,
#              with per-file user confirmation and error handling.

echo "--- Starting .txt to .bak Renamer ---"

# Initialize a flag to check if any .txt files were found
found_txt_files=false

# Loop through all items ending with .txt in the current directory
for filename in *.txt; do
    # Check if the found item is actually a file (and not the literal "*.txt" if no files match)
    if [ -f ""$filename"" ]; then
        found_txt_files=true # Set flag to true as at least one .txt file exists

        new_filename=""${filename%.txt}.bak"" # Remove .txt extension and add .bak

        echo "" # Add an empty line for readability
        read -p "Rename '$filename' to '$new_filename'? (y/n): " confirm
        confirm=${confirm,,} # Convert input to lowercase

        if [ ""$confirm"" == "y" ] || [ ""$confirm"" == "yes" ]; then
            echo "Renaming '$filename' to '$new_filename'..."
            mv ""$filename"" ""$new_filename""

            # Check the exit status of the mv command
            if [ ""$?"" -eq 0 ]; then
                echo "SUCCESS: '$filename' renamed to '$new_filename'."
            else
                echo "ERROR: Failed to rename '$filename'. It might be a permissions issue or target already exists."
            fi
        else
            echo "Skipping '$filename'."
        fi
    fi
done

# Check if no .txt files were processed based on the flag
if ! $found_txt_files; then
    echo "" # Add an empty line for readability
    echo "No .txt files found in the current directory to rename."
fi

echo "" # Add an empty line for readability
echo "--- Renaming process complete ---"
