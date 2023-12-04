#!/bin/bash
file=/c/users/anuan/test.txt

while read line
do
    echo "$line"
    cat $file | grep "wake"| wc
done < $file
