#!/bin/bash
cd /root
for DIR in *
do
CHK=$(grep -c "/root/$DIR" /etc/passwd)
if [ $CHK -ge 1 ]
then
echo "DIR is assigned to a user"
else
echo "DIR is not assigned to any user"
fi
done
