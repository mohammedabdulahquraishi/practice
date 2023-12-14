#! /bin/bash

ID=$(id -n ne 0)
if($ID ne 0)
echo "please run with root access.you are not a root user"
else
echo "please proceed"
fi 
