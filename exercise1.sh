#!/bin/bash
# Tells the system to use bash to interpret this script
# 1. Assign the first command-line argument to FIRST_NAME
FIRST_NAME="${1}"
# 2. Assign the second command-line argument to LAST_NAME
LAST_NAME="${2}"


# Check if either argument is missing
if [ -z "${FIRST_NAME}" ] || [ -z "${LAST_NAME}" ]; then
    # -z checks if the string is empty; || means "or" (either condition triggers the error)
    # Print an error message to the terminal
    echo "Error: Debes pasar tu nombre y apellido como argumentos."
     # Print the correct usage, $0 is the name of the script itself
    echo "Uso: $0 <Nombre> <Apellido>"
    # Exit the script with code 1 (non-zero = failure)
    exit 1
fi

# Create output.txt if it doesn't exist, or clear it if it does
> output.txt

# Append the label "Fecha actual:" to output.txt
echo "Fecha actual:" >> output.txt
# Append today's date in DD-MM-YYYY format to output.txt (bonus format)
date +"%d-%m-%Y" >> output.txt
# Append a blank line to output.txt for readability
echo "" >> output.txt

# Append the label "Nombre completo:" to output.txt
echo "Nombre completo:" >> output.txt
# Append the full name (first + last) to output.txt
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt

# Make a backup copy of output.txt named backup.txt
cp output.txt backup.txt

# Print a header line to the terminal
echo "=== CONTENIDO DE OUTPUT.TXT ==="
# Print the full contents of output.txt to the terminal
cat output.txt