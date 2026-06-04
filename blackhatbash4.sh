#!/bin/bash 
set -x
let result1="4 * 5" # Variable Assignment: Stores the literal string "4 * 5" in the variable 'result'. Note that this does not perform any arithmetic calculation; it simply assigns the string as-is.
echo ${result1} # Output: Prints the literal string "4 * 5" since it's not evaluated as an arithmetic expression.
result=$((5 * 5))
echo ${result}
set +x