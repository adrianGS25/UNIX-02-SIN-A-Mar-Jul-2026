#!/bin/bash
set -x # Enables debugging mode (prints each command before executing it).
bash --version # Displays the current version and license information of the installed Bash shell.
env # Lists all active environment variables for the current session.
echo ${SHELL} # Prints the path to the current user's default shell (e.g., /bin/bash).
echo ${RANDOM} # Generates and prints a random integer between 0 and 32767.
echo ${UID} # Prints the real User ID of the current user (0 for root).
echo ${EUID} # Prints the Effective User ID (used by the operating system to check permissions)
echo ${OSTYPE} # Prints the type of operating system Bash is running on (e.g., linux-gnu).
ps -ef # Displays a snapshot of every active process running on the system in full format.
bash -r blackhatbash1.sh # Runs the script inside a "Restricted Shell" environment for security testing.
bash -n blackhatbash1.sh # Performs a syntax check on the script without actually running any code
bash -x blackhatbash1.sh # Executes the script with debugging enabled specifically for this run.
set +x # Disables the debugging mode