#!/bin/sh
# Set up static routing tables
echo "Adding Static Routing Tables"
# 內網

sudo route -n add 104.215.0.0/16 192.168.2.1

# [ composer.deltaww.com has address 10.136.128.54 ]
sudo route -n add 10.136.0.0/16 192.168.2.1


echo "Route Adding Done"
