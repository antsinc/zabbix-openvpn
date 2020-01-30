# zabbix-openvpn-as
Zabbix 3.0

Script for  OpenVPN Access Server users monitoring.
It shows an OpenVPN user’s status, and its uplink and downlink traffic.
The “items” by the files certificates names are made using LLD.

Setup:

1)	 Copy the file discover_vpn.sh to any directory on the server were  OpenVPN  is(for example	/etc/zabbix/scripts/discover_vpn.sh ). In this file specify the path to directory where OpenVPN certificates are (line №3).

2)	 Copy all lines from “zabbix_agentd.txt” file and paste to the end of zabbix agent  config (/etc/zabbix/zabbix_agentd.conf). Probably, will be necessary to change the path to  discover_vpn.sh. 

3)	 Import openvpn.xml to zabbix template.

4) 	 Add the following items to sudoers so that zabbix users can see the status of OpenVPN Access server.

```
zabbix ALL=(root) NOPASSWD: /etc/zabbix/scripts/vpn_clients.sh
zabbix ALL=(root) NOPASSWD: /etc/zabbix/scripts/vpn_status.sh
```

