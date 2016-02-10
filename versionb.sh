#!/bin/bash
# date format
DATE=`date +_%Y-%m-%d`
filename=$(basename "$1")
#extact file extension
extn="${filename##*.}"
#extract file name suffix
filename="${filename%.*}"
#creating new file
echo "" > $filename$DATE"."$extn
echo "$filename$DATE"."$extn file created successfully"

