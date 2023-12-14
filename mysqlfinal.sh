#! /bin/bash

ID=$(id -u)

VALIDATE() {
    if [ $1 -ne 0 ]
    then
    echo "ERROR :: $2 ... failed"
    exit 100
    else
    echo "$2 ... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
echo "please run with root access.you are not a root user"
exit 1
else
echo "please proceed"
fi 

yum install mysql -y
VALIDATE $? "Installing MySQL"
