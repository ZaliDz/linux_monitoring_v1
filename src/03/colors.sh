#!/bin/bash

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

case $bvn in 
	1) bvn=$bwhite ;;
        2) bvn=$bred ;;
        3) bvn=$bgreen ;;
        4) bvn=$bblue ;;
        5) bvn=$bpurple ;;
        6) bvn=$bblack ;;
esac

case $fvn in
	1) fvn=$fwhite ;;
        2) fvn=$fred ;;
        3) fvn=$fgreen ;;
        4) fvn=$fblue ;;
        5) fvn=$fpurple ;;
        6) fvn=$fblack ;;
esac

case $bv in
	1) bv=$bwhite ;;
        2) bv=$bred ;; 
        3) bv=$bgreen ;;
        4) bv=$bblue ;;
        5) bv=$bpurple ;;
        6) bv=$bblack ;;
esac

case $fv in
	1) fv=$fwhite ;; 
        2) fv=$fred ;;
        3) fv=$fgreen ;;
        4) fv=$fblue ;;
        5) fv=$fpurple ;;
        6) fv=$fblack ;; 
esac

./print.sh
