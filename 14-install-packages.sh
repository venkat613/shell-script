#!/bin/bash
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTMP=$(date +%F-%H-%M-%s)

LOGFILE="/tmp/$0-$TIMESTMP.log"

if [ $ID -ne 0 ]
then
    echo -e " $R error: $Y please run as root user"
    exit 1
else
    echo -e "$G user root user"
fi

VALIDATE (){
    if [ $1 -ne 0 ]
    then
        echo -e "$R $2 failed" 
    else
        echo -e "$G $2 success"
    fi
}
yum install mysql -y

VALIDATE $? "installtion was success" &>>


