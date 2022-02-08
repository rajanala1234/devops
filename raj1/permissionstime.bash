#!/bin/bash
total=`ls -l tree* | wc -l`
echo "it will take $total seconds, to complete"
echo
for i in tree.*
do
echo "Assign write permissions to $i"
chmod a+w $i
sleep 1
done 
