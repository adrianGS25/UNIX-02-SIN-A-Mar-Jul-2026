#!/bin/bash 
IP_ADDRESS="${1}" # Variable to hold the first command-line argument, which is expected to be an IP address
case ${IP_ADDRESS} # Start of a case statement that will compare the value of IP_ADDRESS against different patterns
    in 192.168.*) # Pattern that matches any IP address that starts with "192.168."
    echo "Network is 192.168.x.x" # Print a message indicating that the network is in the 192.168.x.x range
;; 10.0.*) # Pattern that matches any IP address that starts with "10.0."
echo "Network is 10.0.x.x" # Print a message indicating that the network is in the 10.0.x.x range
;; #172.17.*) # Pattern that matches any IP address that starts with "172.17."
*) # Default case that matches any IP address that does not match the previous patterns
echo "Could not identify the network" # Print a message indicating that the network could not be identified
;; # End of the case statement
esac # End of the case statement

# 192.168.hola
# 212.199.2.2
#
