#!/bin/bash
# This script will ping any address provided as an argument.
SCRIPT_NAME="${0}" 
TARGET="${1}" 
echo "Running the script ${SCRIPT_NAME}..." 
echo "Pinging the target: ${TARGET}..." 
ping "${TARGET}"
 
"The arguments are: $@" 
echo "The total number of arguments is: $#"

for arg in "$@"; do
    echo "${arg}"
done