#!/bin/sh

ts=$(date "+%y%m%d_%H%M")

if [ "$#" -eq 1 ]
then
	if [ -f "$1" ]
	then
		if [ -f ${1}.org ]
		then
			cp ${1} ${1}.bak_${ts}
		else
			cp ${1} ${1}.org
		fi
	else
		echo "File ${1} not exist."
	fi
else
	echo "Invalid augument format."
fi
