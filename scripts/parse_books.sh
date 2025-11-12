#!/bin/bash
# Extract the titles of the books
awk '/Title/ {print $2, $3, $4}' books.txt

# Extract the authors of the books
awk '/Author/ {print $2, $3}' books.txt

# Calculate the total number of pages across all books
awk '/Pages/ {total += $2} END {print "Total Pages:", total}' books.txt
