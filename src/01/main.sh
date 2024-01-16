#!/bin/bash

if [[ $# -ge 2 ]]; then 
  echo "Too many arguments"
elif [[ $# -eq 0 ]]; then 
  echo "Input arguments"
elif [[ "$1" ]]; then
  if [[ "$1" =~ ^[A-Za-z]+$ ]]; then 
    echo "$1" 
  else
    echo "Incorrect input"
fi
else 
  echo "Incorrect input"
fi
