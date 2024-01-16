#!/bin/bash

export start=$(date +%s)

if [[ $# -ne 1 ]]; then 
	echo "the script runs with one parameter"
	exit 1
fi

if [[ -f "$1" ]]; then
	echo "$1 is a file. Enter the path"
	exit 1
elif [[ -z "$1" ]]; then
	echo "Enter the parameter"
	exit 1
elif ! [[ -d "$1" ]]; then
	echo "Directory not found"
	exit 1
fi

if [[ ${1: -1} != "/" ]]; then
	echo "The parameter must end with a '/' sign"
	exit 1
fi

export path=$1

chmod +x print.sh
./print.sh

