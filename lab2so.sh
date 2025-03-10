#!/bin/bash

stat ~/programe/program1.c ~/programe/program2.c ~/programe/program2.h

chmod u-r ~/programe/program1.c

chmod ug+x ~/programe/program2.c

chmod 440 ~/programe/program2.h 

wc -l /etc/mtab

wc -L /etc/mtab

find ~/ -type f -mtime -14 -ls

find <director> -type f -perm -u+wx -ls

ps -e -o user,comm,pid


