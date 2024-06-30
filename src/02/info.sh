#!/bin/bash

echo HOSTENAME = $(hostname)
echo TIMEZONE = $(timedatectl | grep 'Time zone' | sed -e 's/,//' -e 's/0//' -e 's/(//' | awk '{printf "%s UTC %s", $3, $4 }')
echo USER = $USER
echo OS = $(cat /etc/issue | sed -r '/^\s*$/d' | awk '{print  $1, $2, $3}')
echo DATE = $(date +"%d %b %Y %T")
echo UPTIME = $(uptime -p)
echo UPTIME_SEC = $(awk '{print $1}' /proc/uptime)
echo IP = $(hostname -I | awk '{print $1}')
echo MASK = $(ifconfig | grep netmask | head -n 1 | awk '{print $4}' )
echo GATEWAY = $(ip -4 route show default | awk '{print $3}')
echo RAM_TOTAL = $(vmstat -s | grep 'total memory' | awk '{printf "%.3f Gb", $1*1e-6}')
echo RAM_USED = $(vmstat -s | grep 'used memory' | awk '{printf "%.3f Gb", $1*1e-6}')
echo RAM_FREE = $(vmstat -s | grep 'free memory'| awk '{printf "%.3f Gb", $1*1e-6}')
echo SPACE_ROOT = $(df -hT | grep "ext4" | head -1 | awk '{ printf $3 }'| sed 's/[^0-9.]*//g' | awk '{printf "%.3f MB", $1* 1024}')
echo SRACE_ROOT_USED = $(df -hT | grep "ext4" | head -1 | awk '{ printf $4 }' | sed 's/[^0-9.]*//g' | awk '{printf "%.3f MB", $1*1024}')
echo SPACE_ROOT_FREE = $(df -hT | grep "ext4" | head -1 | awk '{ printf $5 }' | sed 's/[^0-9.]*//g' | awk '{printf "%.3f MB", $1*1024}')
