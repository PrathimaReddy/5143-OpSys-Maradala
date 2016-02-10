#!/bin/bash
FILE=$1
file_only=$(basename $FILE)
filex=${file_only%.*}
ext=`echo "$file_only" | cut -d '.' -f2`
DATE=`date +%Y-%m-%d`
Final="$filex"_"$DATE"."$ext"
echo $Final
cp $1 $Final









