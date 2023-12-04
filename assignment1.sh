#!/bin/bash
file=/c/users/anuan/test.txt

while read line
do
    echo "$line" | awk '{print $1}' | 
done < $file
