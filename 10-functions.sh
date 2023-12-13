#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0]
then
echo -e "\e[31merror : \e[0m please run as root user"
exit 1 #give other then 0
else 
echo -e "\e[32m your root user"

VALIDATION(){
    if[$1 -ne 0]
    then
    echo "$2 : failure"
    exit 1
    else
    echo "$2 : success"

}
fi
yum install mysql -y

VALIDATION $? "install sql"