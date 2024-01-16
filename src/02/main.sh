#!/bin/bash

chmod +x print.sh
./print.sh	


read -p "Write data to a file?(Y/n)" answer

if [[ $answer == "y" || $answer == "Y" ]]; then
  ./print.sh  > ./$(date +'%d_%m_%y_%H_%M_%S').status 
else
  echo "You have choosen not to record"
fi
