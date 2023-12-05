#!/bin/bash

echo "Enter a string:"
read input

len=${#input}
reverse=""

for ((i=$len-1; i>=0; i--))
do
  reverse="$reverse${input:$i:1}"
done

if [ "$input" == "$reverse" ]; then
  echo "The string is a palindrome."
else
  echo "The string is not a palindrome."
fi