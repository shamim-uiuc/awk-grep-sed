#!/usr/bin/bash

#Find and Replace usinf sed
sed 's/Cluster /Cluster/g' 24HH.txt>mod_24HH.txt

#Replacing words only within a line range (60 through 100 as an example
sed '60,100 s/version/story/g' myfile.txt

#Performing mulitple substitutions using sed
 sed -i 's/it/this/gi;s/column/row/gi' input_file.txt
