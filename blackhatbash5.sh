#!/bin/bash
set -x
top&
touch test && touch test123                   # Create 'test', and if successful, create 'test123'
(ls; ps)                                      # Run 'ls' and 'ps' sequentially inside a subshell
ls; ps; whoami                                # Run 'ls', 'ps', and 'whoami' sequentially in the current shell
lzl || echo "el lzl comando fallo"            # Run 'lzl'; if it fails, print the fallback error message
echo "Hola mundo" > output1.txt               # Write "Hola mundo" into 'output1.txt' (overwriting it)
cat output1.txt                               # Display the contents of 'output1.txt'
echo "Chao  mundo" > output1.txt              # Overwrite 'output1.txt' with "Chao  mundo"
cat output1.txt                               # Display the updated contents of 'output1.txt'
ls -l / &> stdout_and_stderr.txt              # Redirect both standard output and error to 'stdout_and_stderr.txt' (overwrite)
cat stdout_and_stderr.txt                     # Display the combined output/error file
ls -l / &>> stdout_and_stderr.txt             # Append both standard output and error to 'stdout_and_stderr.txt'
cat stdout_and_stderr.txt                     # Display the appended file contents
ls -l / 1> stdout.txt 2> stderr.txt           # Save standard output to 'stdout.txt' and errors to 'stderr.txt'
cat stdout.txt                                # Display the successful output file
cat  stderr.txt                               # Display the error log file
lzl 2> error.txt                              # Run invalid command 'lzl' and save its error to 'error.txt'
cat error.txt                                 # Display the saved error message
cat < output.txt                              # Read and display 'output.txt' using standard input redirection
cat << EOF                                    # Print multi-line text block until reaching the 'EOF' marker
Black Hat Bash
by No Starch Press
EOF