#!/bin/bash
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo -e " $R error: $Y please run as root user"
    exit 1
else
    echo -e "$G user root user"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo -e "$R instalation was failed"
else
    echo -e "$G instalation was success"
fi