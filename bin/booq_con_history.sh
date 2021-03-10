#!/bin/bash

TME=`/bin/date +%F-%H%M`
HN=`hostname`

mkdir -p /opt/booq/preparation

#find / -name '.bash_history' > /opt/booq/preparation/history_find-$HN-$TME.txt 2>/dev/null
find /mnt -maxdepth 12 -path /mnt/proc -prune -false -o -name '.bash_history' > /opt/booq/preparation/history-$HN-$TME.txt 2>/dev/null
#locate bash_history > /opt/booq/preparation/history-$HN-$TME.txt

while read p; do
    grep -o '^[^#]*' $p >>/opt/booq/preparation/history-all-$HN-$TME.txt
    echo  "Current - $p"
done </opt/booq/preparation/history-$HN-$TME.txt
