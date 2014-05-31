#!/bin/bash

# Given a minimum and a maximum size and a set of directories, this script generate an output file in the user's home
# containing the names of the file which dimension is in (minimum, maximum)

if ! [ $# -ge 3 ]; then echo Usage: minSize maxSize directory1 [directory2 ...] && exit 1; fi

min=$1
max=$2

shift && shift

for i in $@; do
	if [[ -d $i ]]; then
		./dimensionfinder_recursive.sh $min $max $i
	else
		echo $i is not a directory
	fi
done

