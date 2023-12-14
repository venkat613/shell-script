#!/bin/bash
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $ID -ne 0 ]
then
    echo -e "$R error :: please run as root user"
    exit 1
else
    echo -e "$G your the root user"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " $R instalation was failed"
    else
        echo -e "$G instalation was success"
    fi
}

for PACKAGE in $@
do
  yum installed $PACKAGE
  if [ $? -ne 0 ]
  then
      yum install $PACKAGE -y
      VALIDATE $?
  else
      echo -e "$Y package already installed"
  fi
done


