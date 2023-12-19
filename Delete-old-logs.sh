#! /bin/bash


if [ ! -d newdir ]
then
echo "ERROR::The given dir doesn't exist"
fi

find . -type f -mtime +14
find . -type d -mtime +14

