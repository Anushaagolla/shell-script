#!/bin/bash
file=/c/users/anuan/test.txt

cat $file | tr ' ' '\n' | sort | sort -d | uniq -c

# while read line
# do
#     echo "$line" | tr ' ' '\n' | sort | sort -d | uniq -c
# done < $file
