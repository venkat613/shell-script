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

VALIDATE(){
   if [ $1 -ne 0 ]
   then
       echo " $2 failed"
   else
       echo -e " $Y $2 success"
   fi
}
yum install nodejs -y

VALIDATE $? 

