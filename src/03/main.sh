#!/bin/bash

if [ $# -ne 4 ]
then
	echo 'Invalid number of parameters'

elif [[ $1 != [1-6] || $2 != [1-6] || $3 != [1-6] || $4 != [1-6] ]]
then
	echo 'Invalid parameters'

elif [[ $1 == $2 || $3 == $4 ]]
then
	echo 'Text and background colors cannot be the same'
	
else
	export color1=$1
	export color2=$2
	export color3=$3
	export color4=$4
	chmod +x ./info.sh
	./info.sh
fi
