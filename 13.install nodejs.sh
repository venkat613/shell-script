#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "error : kindly peform as root user"
    exit 1
else
    echo "your root user"
fi

yum install nodejs -y

if [ $? -ne 0 ]
then
    echo "installation of nodejs is failed"
else
   echo "installation of nodejs success"
fi