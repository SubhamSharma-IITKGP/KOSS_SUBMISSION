#!/bin/bash

input="data.csv"
output="report.txt"

#clear file
> "$output"

#header
echo "Report Generated on: $(date)" >> "$output"
echo "-----------------------------" >> "$output"
echo "User Report" >> "$output"
echo "" >> "$output"

#process file
tail -n +2 "$input" | while IFS=',' read -r name email phone 
do
    echo "Name: $name" >> "$output"
    echo "Email: $email" >> "$output"
    echo "Phone: $phone" >> "$output"
    echo "" >> "$output"
done

#footer
echo "------------------------------" >> "$output"
echo "End of Report" >> "$output"