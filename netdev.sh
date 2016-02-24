#!/bin/sh
###############################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
###############################

#
# Network Subsystem Packet Management
#
# Stop Source-Routing
for i in /proc/sys/net/ipv4/conf/*; do echo 0 > $i/accept_source_route 2> /dev/null;
done
#
# Stop Redirecting
for i in /proc/sys/net/ipv4/conf/*; do echo 0 > $i/accept_redirects 2> /dev/null; done
#
# Reverse-Path-Filter
for i in /proc/sys/net/ipv4/conf/*; do echo 2 > $i/rp_filter 2> /dev/null; done
#
# BOOTP-Relaying ausschalten
for i in /proc/sys/net/ipv4/conf/*; do echo 0 > $i/bootp_relay 2> /dev/null;
done
#
# Proxy-ARP ausschalten
for i in /proc/sys/net/ipv4/conf/*; do echo 0 > $i/proxy_arp 2> /dev/null;
done
#
# Stop secure_redirects
for i in /proc/sys/net/ipv4/conf/*; do echo 0 > $i/secure_redirects 2> /dev/null; done
#
# Stop send_redirects
for i in /proc/sys/net/ipv4/conf/*; do echo 0 > $i/send_redirects 2> /dev/null; done
#
#
# Adjust to arp table gc to clean-up more often
# default:60
for i in /proc/sys/net/ipv4/neigh/*; do echo 30 > $i/gc_stale_time 2> /dev/null;done
#
# Increase TCP
# default:64
for i in /proc/sys/net/ipv4/neigh/*; do echo 96 > $i/proxy_qlen 2> /dev/null; done
#
# default:3
for i in /proc/sys/net/ipv4/neigh/*; do echo 6 > $i/unres_qlen 2> /dev/null; done
#
#
# This will enusre that immediatly subsequent connections use these values.
echo 1 > /proc/sys/net/ipv4/route/flush
#
#
#