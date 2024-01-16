#!/bin/bash

if [[ $# -ne 4 ]]; then
  echo "too few parameters"
  exit 1
else
  export bvn=$1
  export fvn=$2
  export bv=$3
  export fv=$4
fi

if [[ bvn -eq fvn || bv -eq fv ]]; then
  echo "The font and background colors of the same column should not match. Try calling the script again"
  exit 0
fi

for i in $bvn $fvn $v $fv; do
	if [[ $i -lt 1 || $i -gt 6 ]]; then
	echo "Please enter numbers from 1 to 6."
	exit 1
	fi
done
chmod +x colors.sh
chmod +x print.sh

./colors.sh 
