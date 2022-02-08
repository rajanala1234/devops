#!/bin/bash
echo "please provide a username"
read user
echo 
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
echo "Error -- User $user already exists"
echo "Please define another user"
echo
exit 0
fi
echo "Please add Description for the user"
read desc
echo
useradd $user -c "$desc"
echo "$user has been created succesfully"
