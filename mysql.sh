#! /bin/bash

ID=$(id -u ne 0)
if($ID ne 0)
then
echo "please run with root access.you are not a root user"
else
echo "please proceed"
fi 
