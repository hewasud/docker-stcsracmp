#!/usr/bin/bash

echo "Setup STCSRACMP Container..."
sed  -i -e 's/127.0.0.1.*/127.0.0.1 localhost mcssqldev orb-db-d29.statcan.ca/' /etc/hosts
echo
