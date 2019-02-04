#!/bin/bash

#line="* * * * * /path/to/command"
#line="0 5 * * * //bin/links.sh"
#line2="0 0 * * 2,4 //bin/cron_i5"
#(crontab -u userhere -l; echo "$line" ) | crontab -u userhere -
(crontab -l; echo "$line"; echo "$line2" ) | crontab -




