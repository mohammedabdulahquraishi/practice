#! /bin/bash
SOURCE_DIR=/home/centos/practice
if [ ! -d $SOURCE_DIR ]
then
echo "No such directory"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

  while IFS= read -r line
do
echo "deleted file:$line"
rm -rf $line
done <<<$FILES_TO_DELETE



