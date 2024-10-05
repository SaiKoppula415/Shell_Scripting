#!/bin/bash
#set -x
FILE="/etc/shadow"

if [ -e "$FILE" ]; then
	echo "Shoadow passwords are enabled"

	if [ -w "$FILE" ]; then 
		echo "You have permissions to edit $FILE"
	else 
		echo "You dont have permissions to edit $FILE"

	fi
else
	echo "$FILE does not exsists"
fi


