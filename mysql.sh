#! /bin/bash

ID=$(id -u)
if[$ID -ne 0]
then
echo "please run with root access.you are not a root user"
else
echo "please proceed"
fi 
