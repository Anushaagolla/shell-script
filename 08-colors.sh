#!/bin/bash

id=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo -e "print $R the $N id $G is:$id"