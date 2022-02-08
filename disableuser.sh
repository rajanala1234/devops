#!/bin/bash

a=`lastlog | grep -i "dummy" | awk '{print $1}'`
for i in $a
do
usermod -L $i
done
