#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop" # Variable to hold the name of the file that will signal the loop to stop

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do # Loop that continues as long as the file specified in SIGNAL_TO_STOP_FILE does NOT exist
    echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exis t..." # Prints a message indicating that the file does not exist
    echo "Checking again in 2 seconds..." # Prints a message indicating that the script will check again after 2 seconds
    sleep 2 # Pauses the script for 2 seconds before the next iteration of the loop
done # End of the while loop, which will exit once the file specified in SIGNAL_TO_STOP_FILE is found
echo "File was found! Exiting..." # Prints a message indicating that the file was found and the loop is exiting