#!/bin/bash

echo "enter your input"
read $input
reverse=" "

len=${#input}
for (( i=$len; i>=0; i-- ))
do
    reverse="$reverse${input:$i:1}"
done
if [ $input == $reverse]
then
    echo "$input is palindrome"
else
    echo "$input is not palindrome"
fi
