#!/bin/bash

echo "Please Provide Username"
read user
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
echo "Error -- this $user already exists"
echo
exit 0
fi
echo "Please Provide the desc"
read d
echo "Do you want to specify User ID (y/n)?"
read yn
echo
if [ $yn == y ]
then
echo "Please enter user Id whis is greater than 1001"
read uid

useradd $user -c "$d" -u $uid
echo
echo "$user account has been created succesfully with user defined UID"
elif [ $yn == n ]
then
echo "System defined UID will be created"
useradd $user -c "$d"
echo
echo "$user account has been created succesfully with system defined UID"
