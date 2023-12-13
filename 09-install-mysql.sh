#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "error: please run as root user"
else
echo "your root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
echo "error : installation of my sql failed"
else
echo -e "installation of my sql \e[32m success"
fi 
yum install git -y

if [ $? -ne 0 ]
then
echo -e "error : installation git is \e[31m failed"
else
echo -e "installtion of git is \e[32m success"
fi
yum install nodejs -y

if [ $? -eq 0 ]
then
echo -e "installtion of nodejs \e[32m success"
else
echo -e "error : installation of nodejs \e[31m failed"
fi