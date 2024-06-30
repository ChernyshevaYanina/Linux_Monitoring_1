#!/bin/bash
function title () {
    if [[ $1 == 1 ]]
    then 
       echo '(white)'
    elif [[ $1 == 2 ]]
    then 
        echo '(red)'
    elif [[ $1 == 3 ]]
    then 
        echo '(green)'
    elif [[ $1 == 4 ]]
    then 
        echo '(blue)'
    elif [[ $1 == 5 ]]
    then 
        echo '(purple)'
    elif [[ $1 == 6 ]]
    then 
        echo '(black)'
    fi
}

echo

if [[ $default_check1 == 1 ]]
then 
    echo Column 1 background = default $(title $color1)
else
    echo Column 1 background = $color1 $(title $color1)
fi

if [[ $default_check2 == 1 ]]
then 
    echo Column 1 font color = default $(title $color2)
else
    echo Column 1 font color = $color2 $(title $color2)
fi

if [[ $default_check3 == 1 ]]
then 
    echo Column 2 background = default $(title $color3)
else
    echo Column 2 background = $color3 $(title $color3)
fi

if [[ $default_check4 == 1 ]]
then 
    echo Column 2 font color = default $(title $color4)
else
    echo Column 2 font color = $color4 $(title $color4)
fi


