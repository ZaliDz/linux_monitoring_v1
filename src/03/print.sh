#!/bin/bash

HOSTNAME=$(hostname)
TIMEZONE=$(timedatectl | grep 'Time zone')
USER=$(whoami)
OS=$(cat /etc/issue.net)
DATE=$(date +'%d %B %Y %T')
UPTIME=$(uptime -p)
UPTIME_SEC=$(cat /proc/uptime | sed -e 's/\..*//g')
IP=$(hostname -I | head -1)
MASK=$(ifconfig | awk 'NR==11{print $4}')
GATEWAY=$(ip route | grep default | awk '{print $3}' | head -1)
RAM_TOTAL=$(free | grep 'Mem' | awk '{printf("%.3f GB", $2/1024/1024)}')
RAM_USED=$(free | grep 'Mem' | awk '{printf("%3.f GB", $3/1024/1024)}')
RAM_FREE=$(free | grep 'Mem' | awk '{printf("%3.f GB", $4/1024/1024)}')
SPACE_ROOT=$(df /root | awk '/\/$/ {printf "%.2f MB", $2/1024}')
SPACE_ROOT_USED=$(df /root | awk '/\/$/ {printf "%.2f MB", $3/1024}')
SPACE_ROOT_FREE=$(df /root | awk '/\/$/ {printf "%.2f MB", $4/1024}')

echo -e "${bvn}${fvn}HOSTNAME\033[0m = ${bv}${fv}$HOSTNAME\033[0m"
echo -e "${bvn}${fvn}TIMEZONE\033[0m = ${bv}${fv}$TIMEZONE\033[0m"
echo -e "${bvn}${fvn}USER\033[0m = ${bv}${fv}$USER\033[0m"
echo -e "${bvn}${fvn}OS\033[0m = ${bv}${fv}$OS\033[0m"
echo -e "${bvn}${fvn}DATE\033[0m = ${bv}${fv}$DATE\033[0m"
echo -e "${bvn}${fvn}UPTIME\033[0m = ${bv}${fv}$UPTIME\033[0m"
echo -e "${bvn}${fvn}UPTIME_SEC\033[0m = ${bv}${fv}$UPTIME_SEC\033[0m"
echo -e "${bvn}${fvn}IP\033[0m = ${bv}${fv}$IP\033[0m"
echo -e "${bvn}${fvn}MASK\033[0m = ${bv}${fv}$MASK\033[0m"
echo -e "${bvn}${fvn}GATEWAY\033[0m = ${bv}${fv}$GATEWAY\033[0m"
echo -e "${bvn}${fvn}RAM_TOTAL\033[0m = ${bv}${fv}$RAM_TOTAL\033[0m"
echo -e "${bvn}${fvn}RAM_USED\033[0m = ${bv}${fv}$RAM_USED\033[0m"
echo -e "${bvn}${fvn}RAM_FREE\033[0m = ${bv}${fv}$RAM_FREE\033[0m"
echo -e "${bvn}${fvn}SPACE_ROOT\033[0m = ${bv}${fv}$SPACE_ROOT\033[0m"
echo -e "${bvn}${fvn}SPACE_ROOT_USED\033[0m = ${bv}${fv}$SPACE_ROOT_USED\033[0m"
echo -e "${bvn}${fvn}SPACE_ROOT_FREE\033[0m = ${bv}${fv}$SPACE_ROOT_FREE\033[0m"



