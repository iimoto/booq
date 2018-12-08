#!/bin/bash

TME=`/bin/date +%F-%H%M`
HN=`hostname`

cd /opt/booq/collect

cat * > /opt/booq/preparation/links-all-$HN-$TME.txt




