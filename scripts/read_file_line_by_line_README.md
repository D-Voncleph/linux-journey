# `read_file_line_by_line.sh`

## Description
This script is designed to read the contents of a specified text file line by line. It prints each non-empty line to the standard output. The script performs robust validation to ensure a file path is provided and that the specified file exists and is readable.

## Features
* **Command-Line Argument Input:** Takes the target file path as a required command-line argument.
* **Input Validation:** Checks if a file path is provided, if the file exists, and if it is readable. Exits with an error message if any validation fails.
* **Line-by-Line Processing:** Uses a `while` loop with `IFS=` and `read -r` for accurate line reading.
* **Empty Line Skipping:** Only prints lines that contain characters, effectively skipping blank lines.

## Usage
Execute the script, providing the full or relative path to the text file as the first argument:
```bash
./read_file_line_by_line.sh <path_to_text_file>


Examples

    To read a file named my_document.txt in the current directory:
    Bash

./read_file_line_by_line.sh my_document.txt

To read a system log file (e.g., /var/log/syslog - requires sudo if permissions are restricted):
Bash

    ./read_file_line_by_line.sh /var/log/syslog

Error Conditions

The script will exit with an error message if:

    No file path argument is provided.

    The provided path does not point to an existing file.

    The provided file exists but is not readable by the current user.

