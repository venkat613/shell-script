#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "error: please run as root user"
else
echo "your root user"
fi