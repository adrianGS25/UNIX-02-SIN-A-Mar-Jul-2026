#!/bin/bash                                    
# Indicates the script runs using Bash

# This function checks if the current user ID equals zero.   # Comment explaining what the function does

check_root_function(){                               # Defines the function named "check_if_root"

    if [[ "${EUID}" -eq "0" ]]; then           # Checks if the current user ID (EUID) equals 0 (root)
                                               # EUID is a special Bash variable that stores the numeric ID of the user who is currently running the script
        return 0                               # If root, returns 0 (success / true)
    else                                       # If EUID is not 0
        return 1                               # Returns 1 (failure / false), user is NOT root
    fi                                         # End of inner if

}                                              # End of check_if_root function

if check_root_function; then                         # Calls the function and evaluates its return value
    echo "User is root!"                       # If it returned 0 (success), prints that user IS root
else                                           # If the function returned 1
    echo "User is not root!"                   # Prints that the user is NOT root
fi                                             # End of main if block