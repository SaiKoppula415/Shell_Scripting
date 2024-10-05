#!/bin/bash


File="/etc/s"

if [ -e "$File" ]; then
	echo "Shadow passwords are enabled."
	if [ -w "$File" ]; then	
		echo "You have permissions to edit "$File""
	else
		echo "You do not have permissions to edit "$File""
	fi
	
else
	echo "$File" "file does not exist..."
fi



