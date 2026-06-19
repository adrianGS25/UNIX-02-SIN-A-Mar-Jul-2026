#!/bin/bash
 grep "35.237.4.214" log.txt
 grep "35.237.4.214\|13.66.139.0" log.txt
 grep -e "35.237.4.214" -e "13.66.139.0" log.txt
 ps | grep TTY # Lists all processes and filters for those that have "TTY" in their output, which indicates terminal sessions.
ps | grep -i tty # Lists all processes and filters for those that have "tty" in their output, ignoring case sensitivity.

grep -v "35.237.4.214" log.txt # Displays all lines in log.txt that do not contain "35.237.4.214"
grep -o "35.237.4.214" log.txt # Displays only the occurrences of "35.237.4.214" in log.txt

awk '{print $1}' log.txt
awk '{print $1,$2,$3}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt
awk '{print $1,$NF}' log.txt

touch example_csv.txt
echo "hola1,chao1" >> example_csv.txt
echo "hola2,chao2" >> example_csv.txt
echo "hola3,chao3" >> example_csv.txt

head log.txt # Displays the first 10 lines of log.txt using the head command.
awk -F',' '{print $1}' example_csv.txt # Displays the first field of each line in example_csv.txt, using a comma as the field separator.
awk 'NR < 10' log.txt # Displays the first 9 lines of log.txt using awk, where NR is the built-in variable that represents the current record number (line number) being processed.
grep "42.236.10.117" log.txt | awk '{print $7}' # Displays the 7th field of lines in log.txt that contain "

sed 's/Mozilla/Godzilla/g' log.txt # Replaces all occurrences of "Mozilla" with "Godzilla" in log.txt and outputs the result to the terminal.
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt # Creates a new file called newlog.txt that contains the contents of log.txt with all occurrences of "Mozilla" replaced by "Godzilla".
grep "Mozilla" log.txt # Displays all lines in log.txt that contain "Mozilla".
grep "Godzilla" newlog.txt # Displays all lines in newlog.txt that contain "Godzilla", which should be the modified version of the original log.txt.

sed -i '1d' log.txt # Deletes the first line of log.txt in place, modifying the original file.
git diff newlog.txt log.txt # Compares the contents of newlog.txt and log.txt, showing the differences between the two files.

sed -i '$d' newlog.txt # Deletes the last line of newlog.txt in place, modifying the original file.
git diff newlog.txt log.txt # Compares the contents of newlog.txt and log.txt again, showing the differences after deleting the last line of newlog.txt.

sed 's/ //g' log.txt > newlog1.txt # Removes all spaces from log.txt and outputs the result to newlog1.txt.

sed 's/ //g' log.txt > newlog1.txt # Removes all spaces from log.txt and saves the result to newlog1.txt.

sed -n '10,15 p' log.txt # Displays lines 10 through 15 of log.txt using sed, where -n suppresses automatic printing and '10,15 p' specifies the range of lines to print.

