# `backup.sh` Script Documentation

This `README.md` provides specific documentation for the `backup.sh` script, a versatile tool for creating compressed backups of directories.

---

## `backup.sh`

### Description
`backup.sh` is a versatile Bash script designed to create compressed archives (tar.gz files) of specified directories. It automates the process of backing up important data, ensuring that backups are uniquely named with a timestamp and stored in a designated backup location. It integrates concepts like command-line arguments, input validation, and archiving with `tar`.

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
