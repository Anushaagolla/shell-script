#!/bin/bash

# user1=$1
# user2=$2

# echo "$user1 :hi, Good Morning"
# echo "$user2:good morning"

# echo "enter username"
# read -s $USERNAME

# echo "enter password"
# read $PASSWORD

# num1=$1
# num2=$2
# sum=$((num1+num2))
# echo "sum of the two numbers is :$sum"

# Date=$(date +%F)
# echo "todays date is :$Date"

#array=(1 "anu" "anusha")
# a=range(10)
# echo "array is :${array[0]}"
# echo "array is :${array[1]}"
# echo "array is :${array[2]}"

# for i in $a
# do
#     echo $i
# done

num=10
if [$((num%2)) -ie 0 ]
then
    echo "condition is true"
fi
