#!/bin/bash
file=/c/users/anuan/test.txt

#cat $file | tr ' ' '\n' | sort | uniq -c

while read line
do
    echo "$line" | awk '{print $N}' | sort -d | uniq -c
done < $file
