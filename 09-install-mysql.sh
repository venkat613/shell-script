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