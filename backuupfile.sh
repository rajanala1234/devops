#!/bin/bash
tar -cvf /raj2/backup1.tar /raj1
gzip /raj2/backup1.tar.gz -mtime -1 -type f -print &> dev/null
if [ $? -eq 0 ]
then
echo "backup was created"
echo
echo "achieving backup"
echo "backup fails"
fi
