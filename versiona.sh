#!/bin/bash
#changing date format 
current_date=`date +%F`
#reading file name
filename=$1
#creating required file
echo "" > $current_date"_"$filename
echo "file created successfully"
