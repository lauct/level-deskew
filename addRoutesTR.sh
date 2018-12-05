#!/bin/sh
# Set up static routing tables
echo "Adding Static Routing Tables"
# 內網
sudo route -n add 10.0.0.0/4 10.101.218.254
#sudo route -n add 172.17.0.0/16 10.101.218.254

#svn host
sudo route -n add 172.17.64.76 10.101.218.254

#spec host
sudo route -n add 192.168.5.210 10.101.218.254

#測試 SOM DB
sudo route -n add 172.17.120.127 10.101.218.254


#材料行
sudo route -n add 172.17.120.187 10.101.218.254

#repo.testritegroup.com
sudo route -n add 172.17.64.106 10.101.218.254

echo "Route Adding Done"
