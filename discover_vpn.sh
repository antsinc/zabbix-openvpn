#!/bin/bash

users=`sudo -u root /etc/zabbix/scripts/vpn_clients.sh`

echo "{"
echo "\"data\":["

comma=""
for user in $users
do
    echo "    $comma{\"{#VPNUSER}\":\"$user\"}"
    comma=","
done

echo "]"
echo "}"
