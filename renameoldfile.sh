#!/bin/bash
find /root -mtime +10 -exec mv {} {}.old \;
