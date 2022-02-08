#!/bin/bash
for j in tree.*
do
echo "Assign permissions to $j"
chmod a+x $j
sleep 1
done
