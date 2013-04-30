#!/bin/bash
#Program:
#	Program creates three files, whick named by user's input
#	and date command.
#History:
#2013/04/25	peichao		First release

#1.
echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename:" fileuser

#2.
filename=${fileuser:-"filename"}

#3.
date1=$(date --date='2 days ago'+%Y%m%d)
date2=$(date --date='1 days ago'+%Y%m%d)
date3=$(date+%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

touch "$file1"
touch "$file2"
touch "$file3"

