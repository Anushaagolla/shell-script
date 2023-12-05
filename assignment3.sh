#!/bin/bash

echo "enter your input"
read $input
reverse=" "

len=${#input}
for (( i=$len-1; i>=0; i-- ))
do
    reverse="$reverse${input:$i:1}"
done

if [ $input -ne $reverse ]
then
    echo "$input not palindrome"
    exit 1
else
    echo "$input is palindrome"
fi
