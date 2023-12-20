#! /bin/bash
SOURCE_DIR=/home/centos/practice
if [ ! -d $SOURCE_DIR ]
then
echo "No such directory"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

$FILES_TO_DELETE >>> while IFS= read -r line
do
echo "deleted file:$line"
rm -rf $line
done 



