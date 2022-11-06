#!/bin/bash

if [ $# -eq 2 ]
then
	filesdir=$1
	searchstr=$2
	if [ -d $filesdir ]
	then
		files_num=$(find $filesdir -type f | wc -l)
		lines_matches=$(grep -r "$searchstr" $filesdir | wc -l)
		echo "The number of files are $files_num and the number of matching lines are $lines_matches"
	else
		echo "$filesdir is not a directory"
		exit 1
	fi
	
else
	echo "Too few parameters $#"
	exit 1
fi
