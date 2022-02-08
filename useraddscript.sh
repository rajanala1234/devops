#!/bin/bash
echo "Please provid the user name"
read user
echo
useradd $user
echo "user has been created"
