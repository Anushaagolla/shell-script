#!/bin/bash
file=/c/users/anuan/test.txt

while read line
do
    echo "$line"
    cat $file | xargs printf “%s\n” | sort | uniq -c | sort -nr | awk {print $2,$1}

done < $file
