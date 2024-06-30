#!/bin/bash

back_white='\033[107m'
back_red='\033[41m'
back_green='\033[42m'
back_blue='\033[44m'
back_purple='\033[45m'
back_black='\033[40m'

font_white='\033[97m'
font_red='\033[31m'
font_green='\033[32m'
font_blue='\033[34m'
font_purple='\033[35m'
font_black='\033[30m'

end_line='\033[0m'


function beckground() {

    case "$1" in
        "1" ) echo $back_white ;;
        "2" ) echo $back_red ;;
        "3" ) echo $back_green ;;
        "4" ) echo $back_blue ;;
        "5" ) echo $back_purple ;;
        "6" ) echo $back_black ;;
        esac

}

function font_color() {

    case "$1" in
        "1" ) echo $font_white ;;
        "2" ) echo $font_red ;;
        "3" ) echo $font_green ;;
        "4" ) echo $font_blue ;;
        "5" ) echo $font_purple ;;
        "6" ) echo $font_black ;;
        esac

}


function coloring1() {
    echo $(beckground $color1)
    echo $(font_color $color2)
}

function coloring2() {
    echo $(beckground $color3)
    echo $(font_color $color4)
    
}


line1=$1
line2=$2
echo -e $(coloring1) $line1 $(coloring2) $line2 $end_line
