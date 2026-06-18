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

head log.txt
awk -F',' '{print $1}' example_csv.txt
awk 'NR < 10' log.txt
grep "42.236.10.117" log.txt | awk '{print $7}'