#!/bin/bash
file=/c/users/anuan/test.txt

while read line
do
    echo "$line" | tr ' ' '\n' | sort -d | uniq -c
done < $file
