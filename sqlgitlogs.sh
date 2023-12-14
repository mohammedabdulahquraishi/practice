#! /bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
echo -e "$R You are not a root user,please try again with root access"
exit 1
else
echo "please proceed ...."
fi

VALIDATE() {
    if [ $1 -ne 0 ]
    then
    echo -e "$R ERROR $N :: $2 .... $R FAILED"
    exit 1
    else
    echo -e "$2 .... $G SUCCESS"
    fi
}

yum install git -y &>> $LOGFILE
VALIDATE $? "Installing GIT"
yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing MySQL"