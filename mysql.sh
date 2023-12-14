#! /bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "please run with root access.you are not a root user"
exit 1
else
echo "please proceed"
fi 

yum install mysqll -y

if [ $? -ne 0 ]
then
echo "ERROR :: Installation of MySQL failed"
exit 1
else
echo "Installation of MySQL Success"
fi

# I intentionally mentioned 'mysqll' so that it wont get installed.

