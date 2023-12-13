#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
if [ $ID -ne 0 ]
then
   echo -e "$R error please run as root user"
else
   echo -e "$G your root user"
fi 

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2: $R failed"
    else
        echo -e "$2: $G success"
    fi        
}

yum install mysql -y &>> $LOGFILE

VALIDATE $? "INSTALL MYSQL"

yum install nodejs -y &>> $LOGFILE
VALIDATE $? "install nodejs"