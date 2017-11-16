#!/usr/bin/bash

# Insert/adding a new Column
awk -F, '{$1=++i FS $1;}1' OFS=, file

# awk and if condition together
awk -v OFS='\t' '{if($5=="promoter3"||$5=="promoter5"){print $0}}' final_summit_feature.bed > output.bed

#awk comparison of two files having at least one column
 awk -v OFS='\t' 'NR==FNR{a[$1]=$2; b[$1]=$3; c[$1]=$4;next} ($1) in a{print $0, a[$1], b[$1], c[$1]}' final_mart.txt gene_FPKM_stages.txt > output.txt
 
 
#If you want to know the unique values in one column while comapring two columns
awk 'NR==FNR{seen[$1]++;next} !seen[$1]{print $1}' final_mart.txt gene_FPKM_stages.txt |wc -l

#Present only in file gene_FPKM_stages.txt


#Common between two files
awk 'NR==FNR{seen[$2]++;next} seen[$2]{print $2}' file1 file2

#Uncommon between two files
awk 'NR==FNR{seen[$1]++;next} !seen[$1]{print $0}' Seleted_cluster.txt All_cluster.txt > whitefly_specific.txt

#Adding header to a column using awk
awk 'BEGIN{print "FRUITS"}1' file1

#Use of wild cards in awk commands: You have to use .(dot) before star(*) to mean anything.
#Here, I want to substitute anything after _T, so I wrote _T.*
awk -v OFS='\t' '{ gsub("_T.*", "", $4) ; print $0}' final_gene.bed >test3.bed   
