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
