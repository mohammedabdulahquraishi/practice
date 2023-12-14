#! /bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [$ID -ne 0 ]
then
echo "$R You are not a root user,please try again with root access"
else
echo "please proceed ...."
fi

VALIDATE() {
    if [ $1 -ne 0 ]
    then
    echo -e"$R ERROR $N :: $2 .... $R FAILED"
    else
    echo -e"$2 .... $G SUCCESS"
    fi
}

yum install git -y
VALIDATE $? "Installing GIT"

