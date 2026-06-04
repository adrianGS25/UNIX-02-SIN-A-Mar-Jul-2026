#!/bin/bash 
mkdir mydirectory # Creates a new directory named "mydirectory".
touch mydirectory/myfile # # Creates an empty file named "myfile" inside "mydirectory".
set -x # # Enables debugging mode (prints each command to the terminal before running it).
ls -l mydirectory # Lists the contents of "mydirectory" in a long/detailed format
set +x # Disables the debugging mode.