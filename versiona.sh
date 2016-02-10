#!/bin/bash
#Read file name from argument
File_name=$1
DATE=`date +%Y-%m-%d`
Result_file="$DATE"_"$File_name"
echo $1
echo $DATE
echo $Result_file
mv "$1"  "$Result_file"

