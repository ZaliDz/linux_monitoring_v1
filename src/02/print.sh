#!/bin/bash


echo "HOSTNAME = $(hostname)"
echo "TIMEZONE = $(timedatectl | grep 'Time zone')"
echo "USER = $(whoami)"
echo "OS = $(cat /etc/issue.net)"
echo "DATE = $(date +'%d %B %Y %T')"
echo "UPTIME = $(uptime -p)"
echo "UPTIME_SEC = $(cat /proc/uptime | sed -e 's/\..*//g')"
echo "IP = $(hostname -I | head -1)"
echo "MASK = $(ifconfig | awk 'NR==11{print $4}')"
echo "GATEWAY = $(ip route | grep default | awk '{print $3}' | head -1)"
echo "RAM_TOTAL = $(free | grep 'Mem' | awk '{printf("%.3f", $2/1024/1024)}') GB"
echo "RAM_USED = $(free | grep 'Mem' | awk '{printf("%3.f", $3/1024/1024)}') GB"
echo "RAM_FREE = $(free | grep 'Mem' | awk '{printf("%3.f", $4/1024/1024)}') GB"
echo "SPACE_ROOT = $(df /root | awk '/\/$/ {printf "%.2f ", $2/1024}')MB"
echo "SPACE_ROOT_USED = $(df /root | awk '/\/$/ {printf "%.2f ", $3/1024}') MB"
 echo "SPACE_ROOT_FREE = $(df /root | awk '/\/$/ {printf "%.2f ", $4/1024}') MB"
