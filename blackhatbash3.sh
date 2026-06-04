#!/bin/bash
set -x # Enables debugging mode (prints each command before executing it).
book="black hat bash" # Variable Assignment: Stores the text string "black hat bash" inside the variable 'book'.
echo "This book's name is ${book}" # String Interpolation: Prints the message with the value of the 'book' variable.
root_directory=$(ls -ld /) # Command Substitution: Runs 'ls -ld /' and saves the root directory metadata into 'root_directory'.
echo "${root_directory}" # Output: Prints the stored root directory metadata.
unset book # Unsetting Variables: Removes the variable 'book' from the current shell environment.
echo "$BOOK" # Output: Since 'book' has been unset, this will print an empty line (no value).
set +x # Disables the debugging mode, returning the shell to normal operation.