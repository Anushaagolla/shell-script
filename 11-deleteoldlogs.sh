#!/bin/bash

app_logdir=/home/centos/app-logs
date=$(date +%F:%H:%M:%S)
logsdir=/home/centos/shellscript-logs

script_name=$0
logfile=$logsdir/$script_name-$date.log

files_to_delete=$(find $app_logdir -name "*.log" -type f -mtime +14)

echo "script started executing at $date" &>>$logfile

while read line
do
    echo "Deleting $line" &>>$logfile
    rm -rf $line
done <<< $files_to_delete
