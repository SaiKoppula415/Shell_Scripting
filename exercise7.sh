#!/bin/bash


if [ -z "$1" ]; then
	echo "usage: $0 "
	exit 1
fi

File="$1"

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


