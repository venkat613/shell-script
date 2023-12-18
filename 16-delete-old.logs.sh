#!/bin/bash

SOURCE_DIR="/tmp/shell-script.logs"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ ! -d $SOURCE_DIR ] 
then
    echo -e "error::$SOURCE_DIR is not available"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
  echo "deleting files : $line"
  rm -rf $line

done <<< $FILES_TO_DELETE
