#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ $ID -ne 0 ]
then
    echo -e "error : $R kindly peform as root user"
    exit 1
else
    echo "your root user"
fi

yum install nodejs -y

if [ $? -ne 0 ]
then
    echo "installation of nodejs is failed"
else
   echo -e " $Y installation of nodejs success"
fi