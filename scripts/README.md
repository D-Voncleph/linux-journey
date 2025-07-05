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



---

## 2. `setup_env.sh`

### Description
`setup_env.sh` is an initial setup script designed to install essential Linux utilities and tools. It automates the process of getting a new environment ready with commonly used packages, saving manual effort and ensuring consistency. This script demonstrates basic package management using `apt` and conditional execution with `if` statements for checking command success.

### Usage
To run the script, you typically need superuser privileges to install packages.
```bash
sudo ./setup_env.sh

### Key Tools Installed

    git: Version control system.

    curl: Tool for transferring data with URLs.

    tree: Utility to list directory contents in a tree-like format.

    htop: Interactive process viewer.

    wget: Non-interactive network downloader.



---

## 3. greeting.sh

### Description

greeting.sh is a simple interactive Bash script that prompts the user for their name and then displays a personalized welcome message. It serves as a practical demonstration of how to handle user input (read) and utilize shell variables in a script.

### Usage

Bash

./greeting.sh

When prompted, enter your name and press Enter.


---

## 4. conditional_logic_and_test_conditions.sh

### Description

conditional_logic_and_test_conditions.sh is a practice script created to explore and test Bash's conditional logic (if, else, elif, case) and various test conditions ([ ]). It demonstrates how to perform string comparisons (=, !=, -z, -n), numeric comparisons (-eq, -ne, -gt, etc.), and file property checks (-e, -f, -d, -s, etc.) to enable decision-making in scripts.

### Usage

This script is primarily for educational and testing purposes. You can execute it directly and follow any prompts it provides, or inspect its code to understand different conditional examples.
Bash

./conditional_logic_and_test_conditions.sh



---

## 5. check_existence.sh

### Description

check_existence.sh is an interactive Bash script designed to verify the existence of a file or directory at a user-specified path. It showcases the practical application of conditional logic (if/else) combined with the file existence test condition (-e). It's useful for pre-checking resources before performing operations.

### Usage

Bash

./check_existence.sh

When prompted, enter the full path to the file or directory you wish to check (e.g., /etc/hosts or ~/Projects/linux-journey). The script will report whether the item exists or not.



---

