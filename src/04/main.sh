#!/bin/bash
export default_color1=6
export default_color2=5
export default_color3=5
export default_color4=6
export default_check1=0
export default_check2=0
export default_check3=0
export default_check4=0

if [ $# -ne 0 ]
then
	echo 'Invalid'
else
	source config_color.conf
	export color1=$column1_background
	export color2=$column1_font_color
	export color3=$column2_background
	export color4=$column2_font_color

	for i in 1 2 3 4
	do 
		if [[ $[color$i] != [1-6] ]]
		then 
			let color$i=$[default_color$i]
			let default_check$i=1
		fi
	done

	if [[ $color1 == $color2 || $color3 == $color4 ]]
	then
		echo 'Text and background colors cannot be the same'
		exit 1
	fi


 chmod +x ./info.sh
 ./info.sh
fi
