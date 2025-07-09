# `rename_txt_to_bak.sh`

## Description
This script automates the renaming of all `.txt` files in the directory where it is executed to `.bak` files. It provides interactive confirmation for each rename operation and includes basic error handling.

## Features
* **Interactive Confirmation:** Prompts the user before renaming each `.txt` file, allowing for individual control.
* **Robust File Detection:** Ensures only actual files ending with `.txt` are considered.
* **No Files Found Message:** Displays a clear message if no `.txt` files are present in the directory.
* **Error Reporting:** Informs the user if a specific file rename operation fails (e.g., due to permissions).

## Usage
1.  Navigate to the directory containing the `.txt` files you wish to rename.
2.  Execute the script:
    ```bash
    ./rename_txt_to_bak.sh
    ```
3.  Follow the prompts to confirm or skip each rename operation.

## Example
If the current directory contains:
`document.txt`
`notes.txt`

Running `./rename_txt_to_bak.sh` would prompt:
`Rename 'document.txt' to 'document.bak'? (y/n):`
`Rename 'notes.txt' to 'notes.bak'? (y/n):`
