# `backup.sh` - Automated Directory Backup Script

## Overview

`backup.sh` is a robust Bash script designed to create compressed archives (`.tar.gz` files) of specified directories. It automates the crucial task of backing up important data, ensuring each backup is uniquely named with a timestamp and stored in a designated, organized location. This script showcases fundamental Bash concepts like command-line argument handling, input validation, and leveraging standard Linux utilities.

## Features

* **Argument-Based Input:** The script accepts the target directory path as a command-line argument.
* **Input Validation:** It performs essential checks to ensure a directory path is provided and that the specified path is a valid, existing directory.
* **Automated Backup Directory Management:** It automatically creates a dedicated `backups/` directory within the user's home folder (`~/backups/`) if it doesn't already exist, ensuring a consistent backup destination.
* **Timestamped Filenames:** Each backup file is uniquely named using a timestamp, following the format `[directory_name]_[YYYYMMDD_HHMMSS].tar.gz`. This prevents overwrites and facilitates easy identification of different backup versions.
* **Compressed Archiving:** Utilizes the powerful `tar` utility with `gzip` compression to create compact and efficient `.tar.gz` archive files.
* **Modular Design:** The script is structured with functions to separate concerns: one function for generating the backup filename and another for executing the archiving process, enhancing readability and maintainability.
* **User Feedback:** Provides clear messages throughout the backup process, indicating status, success, and the size of the created backup.

## Prerequisites

* **Bash:** The script is written in Bash and requires a Bash-compatible shell to execute.
* **`tar`:** The `tar` utility (typically pre-installed on Linux distributions).
* **`gzip`:** The `gzip` compression utility (typically pre-installed on Linux distributions).
* **`coreutils`:** For `date` and `du` commands (standard on Linux).

## Usage

To run the script, provide the full or relative path to the directory you wish to backup as a command-line argument.


./backup.sh <directory_to_backup>

## Example:

To create a backup of your ~/Documents/MyImportantProject directory:
Bash

./backup.sh ~/Documents/MyImportantProject

### Example Output:

    --- Starting Backup Script ---
    
    Source directory: '/home/your_username/Documents/MyImportantProject'
    Backup file will be: '/home/your_username/backups/MyImportantProject_20250711_153000.tar.gz'

    Creating backup...
    a home/your_username/Documents/MyImportantProject/
    a home/your_username/Documents/MyImportantProject/file1.txt
    a home/your_username/Documents/MyImportantProject/report.pdf
    Success: Backup of '/home/your_username/Documents/MyImportantProject' created at '/home/your_username/backups/MyImportantProject_20250711_153000.tar.gz'

    Backup size: 2.5M

    --- Backup Script Finished ---

## Error Handling

The script includes robust error handling for various scenarios:

* **No Argument Provided**: If no directory path is given, the script prints a usage message and exits.

* **Invalid Directory**: If the provided path is not a valid or existing directory, an error message is displayed, and the script exits.

* **Backup Directory Creation Failure**: If the script cannot create the ~/backups/ directory (e.g., due to permissions), it reports an error and exits.

* **`tar`  Command Failure**: If the archiving process itself encounters an error, the script indicates a backup failure.