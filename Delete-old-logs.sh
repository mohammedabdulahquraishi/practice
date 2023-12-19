#! /bin/bash


if [ ! -d newdir ]
then
echo "ERROR::The given dir doesn't exist"
fi

find . -type f #-mtime +1
find . -type d #-mtime +1

