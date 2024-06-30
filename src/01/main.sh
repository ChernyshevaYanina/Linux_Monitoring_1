#!/bin/bash

error="Error!"

if [ -n "$*" ]
then
	if [ $2 ]
	then
		echo $error
	else
		if [[ $1 =~ [0-9] ]]
		then
			echo $error
		else
			echo $1
		fi
	fi
else
	echo $error
fi
