#!/bin/bash

start=$(date +%s)

if [ $# != 1 ]
then 
    echo Invalid number of parameters
elif [ ${1: -1} != '/' ]
then
    echo Invalid path, add a slash at the end
else 
    echo "Total number of folders = $(sudo find $1 -type d | wc -l)"
    echo "TOP 5 folders of maximum size arraged in desending order:"
    echo "$(sudo du -Sh $1 | sort -rh | head -5 | awk '{print NR,  "-", $2", " , $1}')"
    echo "Total number of files = $(sudo find $1 -type f | wc -l)" 
    echo "Number of:"
    echo "Configuration files = $(sudo find $1 -type f -name "*.conf" | wc -l)"
    echo "Text files = $(sudo find $1 -type f -name "*.txt" | wc -l )"
    echo "Executable files = $(sudo find $1 -type f -executable -exec du -h {} + | wc -l)"
    echo "Log files = $(sudo find $1 -type f -name "*.log" | wc -l)"
    echo "Archive files = $(sudo find $1 -regex '.*\(tar\|zip\|gz\|rar\)' | wc -l)"
    echo "Symbolic links = $(sudo find $1 -type l | wc -l)"
    echo "TOP 10 files of maximum size arranged in desending order"
    echo "$(sudo find $1 -type f -exec du -Sh {} + | sort -rh | head -10 | awk '{print NR,  "-", $2", " , $1}')"
    echo "TOP 10 executable files of the maximum size arranged in desending order"
    echo "$(sudo find $1 -type f -executable -exec du -h {} + | sort -rh | head -10 | awk '{print NR,  "-", $2", " , $1}')'"
    stop=$(date +%s)
    total_time=$(echo "$stop-$start" | bc -l | numfmt --format="%0.1f")
    echo "Script execution time $total_time"
fi