#! /bin/bash




#find . -type f -mtime +1

SOURCE_DIR=/home/centos/practice/
if [ ! -d $SOURCE_DIR ]
then
echo "ERROR::The given dir doesn't exist"
fi
FILESTODELETE=$(find $SOURCE_DIR -type f -name "*.log" -mtime +14)
while IFS=read -r line
do
    echo "Deleting file:$line"
    rm -rf $line
 done <<<$FILESTODELETE




