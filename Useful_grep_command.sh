#!/usr/bin/bash

#grep to extract subset of columns from gff file
grep 'ID=gene' Zea_mays.AGPv3.26.gff3|awk -v OFS='\t' '{print $1, $4, $9}'> out.gff

#Counting particular character using grep c
grep -c '>' file.txt


# Extract N lines before the match
grep -B 3 'Gene1' demo_text > output.txt

#Extract N lines after the match

grep -A 3 'Gene1' demo_text > output.txt

