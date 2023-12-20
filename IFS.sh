#! /bin/bash
file=/home/centos/practice/passport
while IFS=":" read -r username rollnumber idnumber marks
do
echo "username: $username"
echo "rollnumber: $rollnumber"
echo "idnumber: $idnumber"
echo "marks: $marks"
done <$file


