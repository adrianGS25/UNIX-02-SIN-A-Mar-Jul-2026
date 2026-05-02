ls # The 'ls' command lists information about files in the current directory.
LS # LS is incorrect and will generate an error message because Linux is case sensitive
ls Documents # Lists the contents of the Documents directory
ls -l # Provides a long list format with more file information
ls -r # Lists files in reverse alphabetical order
ls -lr # Combined options for a long list in reverse order
pwd # Prints the current working directory path
cd Documents # Navigates to the Documents directory using a relative path
cd / # Navigates to the root directory of the system
cd /home/sysadmin # Navigates to the home directory using an absolute path
cd School/Art # Navigates to the Art directory using a multi-level relative path
cd .. # Moves up one level to the parent directory
cd . # Represents the current directory (no movement)
cd ~ # Returns to the current user's home directory
ls -l /var/log/ # Lists detailed information about files in /var/log
ls -lt /var/log # Sorts files in /var/log by modification time
ls -lS /var/log # Sorts files in /var/log by file size
ls -lSr /var/log # Sorts files in /var/log by size in ascending order
ls -r /var/log # Lists files in /var/log in reverse alphabetical order
su - # Switches to the root user by opening a new login shell
exit # Closes the current shell and returns to the previous user
sudo sl # Executes the 'sl' command with root privileges without changing shells
sudo -u sysadmin sl # Executes a command specifically as the 'sysadmin' user
su -l # Starts a login shell for the root user
su --login # Starts a login shell, loading the full environment of the root user
cd ~/Documents # Moves to the Documents directory to work with permissions
ls -l hello.sh # Displays detailed permissions for the hello.sh file
chmod u+x hello.sh # Adds execute permission for the owner of the file
ls -l hello.sh # Verifies the new permissions in the file listing
./hello.sh # Executes the script from the current directory
sudo chown root hello.sh # Changes the file owner to root (requires administrative access)
ls -l hello.sh # Verifies that the owner has changed to root
sudo ./hello.sh # Executes the script as root since the original user lost permission
cd ~/Documents # Navigates to the Documents directory to view files
cat animals.txt # Concatenates and displays the entire content of animals.txt
cat alpha.txt # Displays the full 26 lines of the alpha.txt file
head alpha.txt # Displays only the first 10 lines of the file by default
tail alpha.txt # Displays only the last 10 lines of the file by default
head -n 5 alpha.txt # Displays exactly the first 5 lines of the file
tail -n 5 alpha.txt # Displays exactly the last 5 lines of the file
cat # Show us whats inside the file
head # Preview of a specific part of a file.
Tail # Preview of a specific part of a file.

