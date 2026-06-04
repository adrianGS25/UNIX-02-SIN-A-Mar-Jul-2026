#!/bin/bash
# Sets an array 
IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)
# Prints all elements in the array 
echo "${IP_ADDRESSES[*]}" 
# Prints only the first element in the array 
echo "${IP_ADDRESSES[0]}"
unset IP_ADDRESSES[1]   # Deletes the second element (index 1) from the array
echo "${IP_ADDRESSES[*]}" # Prints the modified array to the screen