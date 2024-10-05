#!/bin/bash


if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <file_or_directory_name> [additional_files_or_directories...] "
	exit 1
fi

for File in "$@"
do
	if [ -e "$File" ]; then 
		if [ -f "$File" ]; then 
			echo "${File} is a regular File"
		elif [ -d "$File" ]; then 
			echo "${File} is directory file"
		else 
			echo "${File} is other tyoe of file"
		fi
	
		ls -l  "$File"
	else 
		echo "$File does not exists."
	fi
	echo

done



