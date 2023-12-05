#!/bin/bash

echo "enter your input"
read $input

len=$(#input)
for ((i=$len-1; i>=0; i--))
do
    reverse=$reverse${input:$i:1}
done
if [ $input == $reverse]
then
    echo "given input is palindrome"
else
    echo "given input is not palindrome"
fi
