#!/bin/bash

function backup_file(){
	if [ -f $1 ]; then
		local BACK="/tmp/$_basename ${1}).$(date +%F).$$"
		echoj "Backing up $1 to ${BACK}"
		#the exit status of the function will
		#be the exit status of the cp command.
		cp $1 $BACK
	else
		#the file does not exist.
		return 1
	fi
}

backup_file /etc/hosts

#make a decision based on the exit status
if [$? -eq 0 ]; then
	echo "Backup succeeded!!"
else
	echo "Backup Failed!!!"
	#about the script and return a non-zero exitstatus.
	exit 1
fi

