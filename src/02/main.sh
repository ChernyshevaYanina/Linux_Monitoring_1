#!/bin/bash

if [ $# -ne 0 ]
then
	echo 'n/a'
else
	chmod +x ./info.sh
	./info.sh
	echo "Do you want to save status?(y/n)"
	read input

	if [[ $input == 'Y' || $input == 'y' ]]
	then
		file=$(date +'%d_%m_%y_%H_%M_%S')'.status'	
		./info.sh > $file
	fi
fi
