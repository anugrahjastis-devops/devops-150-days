# 🚀 DevOps 150-Day Challenge Log

## 📌 Day 1: Linux Basics & Navigation
1. `pwd` - Print current working directory path
2. `whoami` - Display current logged-in user
3. `ls` - List files and directories
4. `ls -la` - List all files including hidden ones with details
5. `mkdir` - Create a new directory
6. `cd` - Change directory
7. `cd ..` - Move back to parent directory
8. `touch` - Create an empty file
9. `echo` - Print text or append content into files
10. `cat` - Display contents of a file

## 📌 Day 2: Advanced Linux & Log Searching
1. `chmod 755` - Grant executable permissions
2. `grep` - Search text patterns in log files
3. `grep -i` - Case-insensitive text search
4. `grep -n` - Search text and show line numbers
5. `find . -name` - Search files by name in directories
6. `find . -type f` - Search specifically for files only
7. `wc -l` - Count total line numbers in a file
8. `head -n` - View starting lines of a file
9. `tail -n` - View latest/ending lines of a file
10. `history` - View executed shell command history

## 📌 Day 3: Process Handling, Storage & User Ownership
1. `ps aux` - Display all running processes on the system
2. `top` - Display real-time system resource & process usage
3. `kill -9 <PID>` - Forcefully terminate a process by ID
4. `pgrep <name>` - Search process ID by application name
5. `df -h` - Display disk space usage in human-readable format
6. `id` - Show user and group IDs for active user
7. `useradd` - Create a new system user
8. `passwd` - Update or set user password
9. `chown` - Change file/directory ownership and group
10. `groups` - List all groups a user belongs to

## 📌 Day 4: Networking Basics, Port Monitoring & Archiving
1. `ping` - Test network connectivity and reachability to a host
2. `curl -I` - Fetch HTTP response headers from a web server
3. `wget` - Download files directly from the web via CLI
4. `ss -tuln` - Display active listening TCP/UDP ports
5. `nslookup` - Query DNS servers to resolve domain names to IPs
6. `tar -czvf` - Create a compressed tarball archive (.tar.gz)
7. `tar -xzvf` - Extract contents from a compressed tarball archive
8. `zip -r` - Create a recursive zip archive of files/directories
9. `unzip` - Extract files from a zip archive
10. `scp` - Securely copy files between remote hosts over SSH

## 📌 Day 5: Shell Scripting Basics & Automation Fundamentals
1. `#!/bin/bash` - Shebang line specifying the Bash interpreter
2. `chmod +x` - Grant execution permissions to a shell script
3. `./script.sh` - Execute a local shell script file
4. `Variables` - Store dynamic data using `KEY=VALUE` syntax
5. `echo` - Output text or variable values to the terminal
6. `read` - Accept dynamic input from the user during script execution
7. `if/else` - Execute conditional logic blocks in scripts
8. `for/while loops` - Iterate over lists or conditions to automate tasks
9. `$1, $2` - Access positional arguments passed to scripts
10. `$(command)` - Use command substitution to capture CLI output in variables

### 📌 Day 6: Advanced Text Processing & Log Analysis

1. `grep "ERROR" app.log` - Search specific pattern/word in log file
2. `grep -i "error" app.log` - Case-insensitive text search
3. `grep -n "500" app.log` - Search text and show line numbers
4. `grep -c "FAIL" app.log` - Count total occurrences of matching pattern
5. `awk '{print $1}' app.log` - Extract specific column (e.g., Date or IP)
6. `awk '$3 == "ERROR"' app.log` - Conditional filtering based on field values
7. `sed 's/http/https/g' config.txt` - Stream replace text (output preview)
8. `sed -i 's/old/new/g' file.txt` - Replace text directly inside file permanently
9. `cat app.log | grep "ERROR" | wc -l` - Pipeline commands to count total errors
10. `sort | uniq -c` - Sort and count unique log entries
