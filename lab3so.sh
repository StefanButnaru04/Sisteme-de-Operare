#!/bin/bash

head -n 15 /etc/passwd | grep '/sbin/nologin' | grep -E ':.*[m-z]$' | cut -d: -f1 > max15.txt # Problema 1

ps aux | grep 'bash' | grep -E 'pts/[0125]' | sort -k2,2n -r > output.txt # Problema 2

ps -eo user,comm,pid --no-headers | tr -s " " | cut -d" " -f1,2,3 --output-delimiter=: | sort -k2 -t: # Problema 4



