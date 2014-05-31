#!/bin/bash

for file in "$3"/*; do
	if [ -f "$file" ]; then
		size=`stat -c %s "$file"`
		if [[ $size -ge $1 && $size -le $2 ]]; then
			echo "$file" `stat -c %s "$file"` >> /home/$USER/output
		fi
		echo "$file" `stat -c %s "$file"`
	elif [ -d "$file" ]; then
		$0 $1 $2 "$file"
	fi
done