#!/bin/bash


read -p "Enter the name of a file or directory: " File

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


