#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then
echo -e "\e[31merror : \e[0m please run as root user"
exit 1 #give other then 0
else 
echo -e "\e[32m your root user"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}
yum install mysql -y

VALIDATION $? "install sql"