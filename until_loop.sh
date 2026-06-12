#!/bin/bash 
FILE="output2.txt" # Variable to hold the name of the file that will be checked for content
touch "${FILE}" # Creates the file specified in FILE if it does not already exist, or updates its timestamp if it does exist
until [[ -s "${FILE}" ]]; do # Loop that continues until the file specified in FILE has a size greater than zero (i.e., it contains some content)
    echo "${FILE} is empty..." # Prints a message indicating that the file is empty
    echo "Checking again in 2 seconds..." # Prints a message indicating that the script will check again after 2 seconds
    sleep 2 # Pauses the script for 2 seconds before the next iteration of the loop
done # End of the until loop, which will exit once the file specified in FILE has some content in it
echo "${FILE} appears to have some content in it!" # Prints a message indicating that the file now has content and the loop is exiting