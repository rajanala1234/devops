#!/bin/bash
echo "how many files to be created"
read t
echo "Please enter the file name"
read n
for j in $(seq 1 $t)
do 
touch $n.$j
done
