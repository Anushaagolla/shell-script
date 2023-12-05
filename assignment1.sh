#!/bin/bash
file=/c/users/anuan/test.txt

while read line
do
    echo "$line" |awk '{print $N}'| wc
done < $file
