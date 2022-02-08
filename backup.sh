#!/bin/bash
tar -cvf /tmp/backup.tar /etc/var
gzip /tmp/backup.tar
find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
then
echo "backup was created"
echo
echo "achieving backup"
echo "Backup fails"
fi
