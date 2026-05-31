# Return to the user's home directory
cd ~

# Use 'dd' to create a 50MB file named swapex filled with binary zeros
# if=/dev/zero: Specifies the input file as an infinite source of zeros
# of=/tmp/swapex: Specifies the destination output file path
# bs=1M: Sets the data block size to 1 Megabyte
# count=50: Copies exactly 50 blocks from the input source
dd if=/dev/zero of=/tmp/swapex bs=1M count=50

# Example command to clone an entire hard drive to another at a bit level
# if=/dev/sda: Source hard drive (input)
# of=/dev/sdb: Destination hard drive (output)
# Note: Block size (bs) and count are not required when cloning entire drives
# dd if=/dev/sda of=/dev/sdb

# Change the current working directory to the Documents folder
cd ~/Documents

# Move a single file (people.csv) into a directory (Work)
# The file retains its original name because no new name was specified in the destination
mv people.csv Work

# Verify that the file was successfully moved by listing the contents of the Work directory
ls Work

# Move multiple source files (numbers.txt, letters.txt, alpha.txt) into a single destination directory (School)
# Note: The final argument must always be the destination directory
mv numbers.txt letters.txt alpha.txt School

# Verify the multiple files movement by listing the contents of the School directory
ls School

# Rename a file within the same directory by moving it to a new filename
# This changes 'animals.txt' to 'zoo.txt' without changing its physical location
mv animals.txt zoo.txt

# List the current directory contents to confirm the renaming from animals.txt to zoo.txt
ls

# Change the current working directory to the Documents folder
cd ~/Documents

# Delete a regular file using the rm (remove) command
# Note: Files deleted with rm are permanently removed and do not go to a trash bin
rm linux.txt

# Attempt to verify deletion (this will return a 'No such file or directory' error)
ls linux.txt

# Attempt to delete a directory without options (this will fail with an 'Is a directory' error)
# rm Work

# Delete a directory and all of its contents recursively using the -r option
# Warning: This permanently deletes the directory, its files, and all subdirectories
rm -r Work

# Verify that the directory was successfully deleted
ls Work

# Change the current working directory to the Documents folder
cd ~/Documents

# Copy the system password file to the current directory as a prerequisite
cp /etc/passwd .

# Use 'grep' to search for and display lines that match a specific pattern
# Pattern: 'sysadmin'
# Target File: 'passwd'
# This filters the large file to show only the account details for the sysadmin user
grep sysadmin passwd


# Regular Expressions (Regex) Documentation

# Match lines where 'sysadmin' is at the BEGINNING of the line
grep "^sysadmin" passwd

# Match lines where 'bash' is at the END of the line
grep "bash$" passwd

# Match 'r', followed by ANY single character, followed by 'o' (e.g., 'roo')
grep "r.o" passwd

# Match 'bin' followed by either 'a', 'b', or 'h'
grep "bin[abh]" passwd

# Match 'bin' followed by any character EXCEPT 'a' or 'b'
grep "bin[^ab]" passwd

# Match 'ss' followed by zero or more 'h' characters
grep "ssh*" passwd

# Move to the Documents directory to execute regex tests
cd ~/Documents


# 1. Anchor Characters (^ and $)

# Match lines where 'root' is strictly at the BEGINNING of the line in /etc/passwd
grep '^root' /etc/passwd

# Match lines that end with the letter 'r' in the alpha-first.txt file
grep 'r$' alpha-first.txt

# 2. Matching Characters Using Dot (.)

# Match lines with 'r', followed by exactly two wildcards, and ending with 'f'
grep 'r..f' red.txt

# Match words of four letters starting with 'r' and ending with 'd'
grep 'r..d' red.txt

# Match any lines containing at least four characters in total
grep '....' red.txt

# Match 'r', followed by any two characters, and ending with 't' in /etc/passwd
grep 'r..t' /etc/passwd

# 3. Matching Single Characters / Ranges Using Bracket Expressions [ ]

# Match lines in profile.txt containing any single digit from 0 to 9
grep '[0-9]' profile.txt

# Match lines containing at least one non-numeric character using the bracket negation (^)
grep '[^0-9]' profile.txt

# Match lines containing a literal dot character by placing it inside brackets
grep '[.]' profile.txt

# 4. Matching Repeated Patterns Using Asterisk (*)

# Match 'r', followed by zero or more 'e' characters, and ending with 'd'
grep 're*d' red.txt

# Match 'r', followed by zero or more occurrences of 'o' or 'e', ending with 'd'
grep 'r[oe]*d' red.txt

# Match lines containing at least one 'e' character (using 'ee*' to ensure a minimum of one match)
grep 'ee*' red.txt

# Return to the user's home directory
cd ~

# System Shutdown and Date Administration
# Note: These commands require administrative (root) privileges

# Switch to the root user account before executing (interactive command)
# su -

# Check the current system time in Universal Time Coordinated (UTC) format
date

# Shut down the system immediately (NOW)
shutdown now

# Schedule a system shutdown at a specific time of day (Format hh:mm)
# Example: scheduling it for 01:51 UTC
shutdown 01:51

# Schedule a system shutdown with a time delay in minutes and a custom broadcast message
# +1: Delays the shutdown execution by 1 minute
# "Goodbye World!": Custom message sent to all active terminal sessions
shutdown +1 "Goodbye World!"

# Network Configuration and Connectivity

# Display active network interfaces and IP configurations
# eth0: Main Ethernet interface (active IPv4 e.g., 192.168.1.2)
# lo: Loopback interface used by the system to send network data to itself
ifconfig

# Note on wireless networks:
# 'iwconfig' is used similarly to ifconfig but specifically for wireless interfaces
# iwconfig

# Test network connectivity to a local host with a limit of 4 packets
# -c 4: Limits the ping command to exactly 4 echo requests (prevents infinite loop)
ping -c 4 192.168.1.2

# Example of a failing ping request to an unreachable destination host
# This demonstrates network troubleshooting and 100% packet loss tracking
ping -c 4 192.168.1.3

# Exit administrative root session and return to the standard user shell
exit

# Process Monitoring and Viewing (ps command)

# Display active processes running in the current terminal session
# Output columns:
# PID: Unique Process Identifier
# TTY: Terminal name associated with the process
# TIME: Total CPU processing time used
# CMD: The command that initiated the process
ps

# Display EVERY process currently running on the system using the -e option
ps -e

# Display a full-format (detailed) listing of all running processes using -ef
# Adds extra columns like:
# UID: User ID owner of the process
# PPID: Parent Process ID
ps -ef

# Package Management (Debian/Ubuntu apt tools)
# Note: Most of these commands require administrative privileges via 'sudo'

# Update the local package index cache from remote repositories
sudo apt-get update

# Search for available packages matching a specific keyword in repositories
# Example: searching for packages related to 'cow'
apt-cache search cow

# Install a new software package from the repositories
# Example: installing the 'cowsay' package
sudo apt-get install cowsay

# Execute the installed package to verify its functionality
# Recommended to wrap the text in single quotes to protect it from shell interpretation
cowsay 'NDG Linux Unhatched'

# Upgrade all currently installed packages to their latest versions
# Step 1: Refresh repository lists (done above)
# Step 2: Perform the system upgrade
sudo apt-get upgrade

# Remove a package but preserve its local configuration files
# sudo apt-get remove cowsay

# Completely purge a package, removing its binaries and all configuration files
# The '-y' option can be appended to assume 'yes' to prompts automatically
sudo apt-get purge cowsay

# Cambiar la contraseña del usuario actual (interactivo)
passwd

# Ver el estado y la configuración de la contraseña del usuario sysadmin
passwd -S sysadmin

# Cambiar a la cuenta de root (requiere contraseña)
su root

# Como root, cambiar la contraseña de un usuario específico sin pedir la actual
passwd sysadmin

# Salir de la sesión de root
exit