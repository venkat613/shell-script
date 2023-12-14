#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "error: please run as root user"
    exit 1
else
    echo "user root user"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "instalation was failed"
else
    echo "instalation was success"
fi