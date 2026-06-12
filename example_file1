#!/bin/bash
for file in example_file*; do # Loop through all files in the current directory that start with "example_file"
if [[ "${file}" == "example_file1" ]]; then # Check if the current file is "example_file1"
echo "Skipping the first file" # Print a message indicating that the first file is being skipped
continue # Skip the rest of the loop and move on to the next file
fi # End of the if statement that checks for "example_file1"
echo "${RANDOM}" > "${file}" # Write a random number to the current file, overwriting its contents
done # End of the for loop that iterates through the files