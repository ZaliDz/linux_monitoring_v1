#!/bin/bash

if [[ $# -ne 0 ]]; then
  echo "this script does not accept parameters as input"
  exit 1
fi

source colors.conf

if [[ "$column1_background" -eq "$column1_font_color" || "$column2_background" -eq "$column2_font_color" ]]; then
  echo "The font and background colors of the same column should not match. Try calling the script again"
  exit  0
fi

#back
bwhite="\e[107m"
bred="\e[41m"
bgreen="\e[42m"
bblue="\e[44m"
bpurple="\e[45m"
bblack="\e[40m"

#font
fwhite="\e[97m"
fred="\e[31m"
fgreen="\e[32m"
fblue="\e[34m"
fpurple="\e[35m"
fblack="\e[30m"

export default1=0
export default2=0
export default3=0
export default4=0
export color_scheme1="a"
export color_scheme2="a"
export color_scheme3="a"
export color_scheme4="a"

case $column1_background in 
	1) arr[0]=$bwhite ; color_scheme1="white" ;;
	2) arr[0]=$bred ; color_scheme1="red" ;;
	3) arr[0]=$bgreen ; color_scheme1="green" ;;
	4) arr[0]=$bblue ; color_scheme1="blue" ;;
	5) arr[0]=$bpurple ; color_scheme1="purple" ;;
	6) arr[0]=$bblack ; color_scheme1="black" ;;
 	"") arr[0]=$bwhite ; default1=1 ; color_scheme1="white" ;;
	*) echo "please enter numbers from 1 to 6"
	exit 1
esac

case $column1_font_color in 
        1) arr[1]=$fwhite ; color_scheme2="white" ;;
        2) arr[1]=$fred ; color_scheme2="red" ;;
        3) arr[1]=$fgreen ; color_scheme2="green" ;;
        4) arr[1]=$fblue ; color_scheme2="blue" ;;
        5) arr[1]=$fpurple ; color_scheme2="purple" ;;
        6) arr[1]=$fblack ; color_scheme2="black" ;;
	"") arr[1]=$fblack ; default2=1 ; color_scheme2="black" ;;
	*) echo "please enter numbers from 1 to 6"
        exit 1

esac


case $column2_background in 
        1) arr[2]=$bwhite ; color_scheme3="white" ;;
        2) arr[2]=$bred ; color_scheme3="red" ;;
        3) arr[2]=$bgreen ; color_scheme3="green" ;;
        4) arr[2]=$bblue ; color_scheme3="blue" ;;
        5) arr[2]=$bpurple ; color_scheme3="purple" ;;
        6) arr[2]=$bblack ; color_scheme3="black" ;;
        "") arr[2]=$blue ; default3=1 ; color_scheme3="blue" ;;
	*) echo "please enter numbers from 1 to 6"
        exit 1

esac

case $column2_font_color in 
        1) arr[3]=$fwhite ; color_scheme4="white" ;;
        2) arr[3]=$fred ; color_scheme4="red" ;;
        3) arr[3]=$fgreen ; color_scheme4="green" ;;
        4) arr[3]=$fblue ; color_scheme4="blue" ;;
        5) arr[3]=$fpurple ; color_scheme4="purple" ;;
        6) arr[3]=$fblack ; color_scheme4="black" ;;
	"") arr[3]=$fgreen; default4=1 ; color_scheme4="green" ;;
	*) echo "please enter numbers from 1 to 6"
        exit 1

esac

export bvn=${arr[0]}
export fvn=${arr[1]}
export bv=${arr[2]}
export fv=${arr[3]}
export color1=$column1_background
export color2=$column1_font_color
export color3=$column2_background
export color4=$column2_font_color

chmod +x print.sh
chmod +x schem_print.sh
./print.sh
./schem_print.sh
