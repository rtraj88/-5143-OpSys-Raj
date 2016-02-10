#!/bin/bash
path="/usr/share/dict/words"
#Number of words in $path
Count=$( cat "$path" | wc -w )
#generate random number
num=$((RANDOM%$Count+1))
#extract random word
sed -n "$num p" $path;


