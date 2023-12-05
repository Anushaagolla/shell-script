#!/bin/bash
file=/c/users/anuan/test.txt

while read line
do
    echo "$line" | tr ' ' '\n' | sort | uniq -c
done < $file
