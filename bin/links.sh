#!/bin/bash

strings /home/$USER/.local/share/clipit/history >> /opt/booq/collect/links_moon.txt

sort /opt/booq/collect/links_moon.txt | grep ^http | uniq >/opt/booq/collect/links_moon_uniq.txt
#sort ./disklog.txt | grep ^http | uniq >./disklog.unq

cat /opt/booq/collect/links_moon_uniq.txt > /opt/booq/collect/links_moon.txt




