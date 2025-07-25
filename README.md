# linux-journey
A place to document my journey learning Linux commands and DevOps concepts.
# My Linux Journey Documentation

This repository serves as a personal log of my journey learning Linux commands, system administration, and DevOps concepts.

## Week 1: Foundational Linux Commands

This week, I focused on mastering fundamental commands for navigating the filesystem, manipulating files, and managing permissions.

### 1. Filesystem Navigation

* **`pwd` (Print Working Directory):**
    * **Purpose:** Shows the absolute path of the current working directory.
    * **Example Usage:** `pwd`
    * **My Understanding:** Essential for knowing "where I am" in the Linux file hierarchy.

* **`ls` (List Directory Contents):**
    * **Purpose:** Lists files and directories.
    * **Key Flags Mastered:**
        * `-l` (long listing format): Shows detailed information like permissions, owner, group, size, date.
            * *Example:* `ls -l`
        * `-a` (all): Shows hidden files (starting with `.`) and `.` (current dir) and `..` (parent dir).
            * *Example:* `ls -a`
        * `-la` or `-al` (combined): Shows all files in long format.
            * *Example:* `ls -la`
    * **My Understanding:** Crucial for exploring directories and inspecting file details.

* **`cd` (Change Directory):**
    * **Purpose:** Changes the current working directory.
    * **Key Usage Examples:**
        * `cd Documents`: Go into a subdirectory.
        * `cd ..`: Go up one directory level (to the parent directory).
        * `cd ~` or `cd`: Go directly to my home directory.
    * **My Understanding:** The primary way to move around the filesystem.

* **`mkdir` (Make Directory):**
    * **Purpose:** Creates new directories.
    * **Example Usage:** `mkdir my_project` or `mkdir -p project/src/backend` (for nested directories).
    * **My Understanding:** How to organize my files into structured folders.

* **`rmdir` (Remove Directory):**
    * **Purpose:** Removes **empty** directories.
    * **Example Usage:** `rmdir empty_folder`
    * **My Understanding:** Used for cleanup, but only on empty folders. For non-empty, `rm -r` is needed (which I'll use carefully!).

### 2. File Manipulation

* **`touch` (Create Empty Files / Update Timestamps):**
    * **Purpose:** Creates new empty files or updates the access/modification timestamps of existing files.
    * **Example Usage:** `touch my_file.txt`
    * **My Understanding:** Quick way to create placeholder files or refresh file dates.

* **`cp` (Copy Files and Directories):**
    * **Purpose:** Copies files or directories.
    * **Key Usage Examples:**
        * `cp source.txt destination.txt`: Copy a file.
        * `cp file.txt new_directory/`: Copy a file into a directory.
        * `cp -r directory_source/ directory_destination/`: Recursively copy a directory and its contents.
    * **My Understanding:** Essential for backing up or duplicating files.

* **`mv` (Move/Rename Files and Directories):**
    * **Purpose:** Moves files/directories or renames them.
    * **Key Usage Examples:**
        * `mv oldname.txt newname.txt`: Rename a file.
        * `mv file.txt /path/to/new_location/`: Move a file to a different directory.
    * **My Understanding:** Crucial for organizing and tidying up files.

* **`rm` (Remove Files and Directories):**
    * **Purpose:** Deletes files or directories. (Used with extreme caution!)
    * **Key Usage Examples:**
        * `rm file.txt`: Delete a file.
        * `rm -r directory_to_delete/`: Recursively delete a non-empty directory.
        * `rm -rf dangerous_folder/`: Forcefully delete without prompts (VERY dangerous!).
    * **My Understanding:** Powerful but dangerous. Always double-check before using `rm -r` or `rm -f`.

### 3. File Permissions (`chmod`)

* **Purpose:** Changes file and directory permissions.
* **Permission Types:** `r` (read - 4), `w` (write - 2), `x` (execute - 1)
* **User Categories:** `u` (user/owner), `g` (group), `o` (others), `a` (all)

* **Symbolic Notation:**
    * `chmod u+x script.sh`: Add execute permission for the owner.
    * `chmod go-w file.txt`: Remove write permission for group and others.
    * `chmod u=rw,g=r,o= file.txt`: Set exact permissions (owner rw, group r, others none).
    * **My Understanding:** Intuitive for adding/removing specific permissions.

* **Octal (Numeric) Notation:**
    * `chmod 755 script.sh`: (rwx for owner, rx for group, rx for others) - Common for executables.
    * `chmod 644 file.txt`: (rw for owner, r for group, r for others) - Common for data files.
    * `chmod 600 config.conf`: (rw for owner, no permissions for group/others) - Good for sensitive files.
    * **My Understanding:** Efficient for setting complete permission sets, widely used in professional environments. Requires knowing the numeric values.

---



## Week 2: Essential Linux Utilities - Command Chaining and Redirection

This week, I delved into more advanced command-line techniques, specifically mastering the use of pipes and output redirection, which are fundamental for scripting and automation.

### 1. Command Chaining with Pipes (`|`)

* **Purpose:** The pipe operator (`|`) allows me to take the standard output of one command and use it as the standard input for another command. It's like connecting the "spout" of one program to the "funnel" of another.
* **Key Use Cases:**
    * **Filtering Output:** `ps aux | grep [process_name]` - Used `ps aux` to list all processes, then piped its output to `grep` to filter for specific processes (e.g., `gnome-terminal`, `firefox`).
    * **Paging Long Output:** `ls -l | less` - Used `less` to view long command outputs one screen at a time, preventing text from scrolling off.
    * **Combining Utilities:** Chaining multiple commands to achieve complex tasks, like counting specific types of files (`find . -type f | wc -l`).

### 2. Output Redirection (`>` and `>>`)

* **Purpose:** These operators allow me to send the standard output of a command to a file, rather than displaying it on the terminal screen.
* **Key Operators:**
    * **`>` (Overwrite Redirection):**
        * Sends command output to a file.
        * **Crucially, if the file already exists, its previous contents are completely overwritten.** I practiced saving `date` output and then `ls -l` output to the same file, seeing the content replaced.
        * *Example:* `date > my_log.txt` (creates/overwrites `my_log.txt` with the current date).
    * **`>>` (Append Redirection):**
        * Sends command output to a file.
        * If the file exists, the output is **appended** to the end of the file, preserving existing content. If the file doesn't exist, it's created. I practiced adding `date` and `uptime` to a file, seeing content added sequentially.
        * *Example:* `uptime >> my_log.txt` (adds uptime to `my_log.txt` without erasing the date).

These techniques significantly enhance my ability to process and manage data directly from the command line, and are essential building blocks for shell scripting.
