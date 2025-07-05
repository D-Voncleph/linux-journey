This README.md explains the backup.sh script in detail.
Markdown

# Scripts Collection

This directory contains various Bash scripts developed as part of my Linux Journey curriculum. Each script is designed to automate specific tasks and demonstrates fundamental Bash scripting concepts.

---

## 1. `backup.sh`

### Description
`backup.sh` is a versatile Bash script designed to create compressed archives (tar.gz files) of specified directories. It automates the process of backing up important data, ensuring that backups are uniquely named with a timestamp and stored in a designated backup location.

### Features
* **Argument-based Input:** Takes the target directory path as a command-line argument.
* **Input Validation:** Checks if a directory path is provided and if the provided path is a valid, existing directory.
* **Automated Backup Directory:** Creates a `backups/` directory in the user's home directory (`~/backups/`) if it doesn't already exist.
* **Timestamped Filenames:** Generates unique backup filenames in the format `[directory_name]_[YYYYMMDD_HHMMSS].tar.gz`, preventing overwrites and facilitating easy identification.
* **Compressed Archive:** Uses `tar` with `gzip` compression to create compact `.tar.gz` archive files.
* **User Feedback:** Provides clear messages about the backup process status, including success/failure and the size of the created backup.

### Prerequisites
* **Bash:** The script is written in Bash and requires a Bash-compatible shell to run.
* **tar:** The `tar` utility (typically pre-installed on Linux systems).
* **gzip:** The `gzip` compression utility (typically pre-installed on Linux systems).

### Usage
To run the script, provide the full or relative path to the directory you wish to backup as a command-line argument.

```bash
./backup.sh <directory_to_backup>

Example:
To backup your ~/Projects/linux-journey directory:
Bash

./backup.sh ~/Projects/linux-journey

Output Example:

--- Starting Backup Script ---
Source directory: '/home/voncleph/Projects/linux-journey'
Backup file will be: '/home/voncleph/backups/linux-journey_20250705_103000.tar.gz'
Creating backup...
# (tar verbose output will show files being added)
Success: Backup of '/home/voncleph/Projects/linux-journey' created at '/home/voncleph/backups/linux-journey_20250705_103000.tar.gz'
Backup size: 4.0M
--- Backup Script Finished ---

Error Handling

The script includes basic error handling for:

    No argument provided: Prints a usage message.

    Invalid directory: Exits if the provided path is not a valid or existing directory.

    Backup directory creation failure: Exits if ~/backups/ cannot be created.

    tar command failure: Reports if the backup process itself fails.

 ## 2. greeting.sh

 ### Description

greeting.sh is a simple interactive Bash script that prompts the user for their name and then displays a personalized welcome message. It demonstrates fundamental concepts of user input and shell variables.

Usage

Bash

./greeting.sh

When prompted, enter your name and press Enter.

3. check_existence.sh

Description

check_existence.sh is an interactive Bash script designed to verify the existence of a file or directory at a user-specified path. It showcases conditional logic (if/else) and file test conditions (-e).

Usage

Bash

./check_existence.sh

When prompted, enter the full path to the file or directory you wish to check (e.g., /etc/hosts or ~/Projects/linux-journey).
