#!/usr/bin/bash

echo "Setup STCSRACMP Container..."
cat /etc/hosts | sed  's/127.0.0.1.*/127.0.0.1 localhost mcssqldev orb-db-d29.statcan.ca/' > /etc/hosts2
cd /etc
cat hosts2 > hosts
rm -f hosts2
echo
