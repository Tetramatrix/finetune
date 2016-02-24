#!/bin/sh
#################################################################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
##################################################################

ifconfig wlan0 txqueuelen 10000
sleep 1 
ifconfig wlan0 192.168.1.11 netmask 255.255.255.0 up
sleep 1
route add default gw 192.168.1.1 dev wlan0

iptables -F FORWARD
iptables -F INPUT

sh firewall.sh
sh htb.sh
sh tc.sh
sysctl -p kernel.conf 
sh fs.sh
#sh net.sh 
sh netdev.sh
sysctl -p net.conf
sysctl -p nettime.conf
sysctl -p netmem.conf
sysctl -p vm.conf
#sh symlink.sh
#sh symlink2.sh
