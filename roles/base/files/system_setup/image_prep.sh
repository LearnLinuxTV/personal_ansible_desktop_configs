#!/bin/bash


#### Clear log files
find /var/log -type f -name "*log" -exec truncate -s 0 {} \;
truncate -s 0 /var/log/*tmp


#### Clear user files
find /home -type f -name .bash_history -exec rm {} \;

if [ -f /root/.bash_history ]; then
  rm /root/.bash_history
fi

find /home -type f -name .viminfo -exec rm {} \;
if [ -f /root/.viminfo ]; then
  rm /root/.viminfo
fi
