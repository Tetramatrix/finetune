#!/bin/sh
###########################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
###########################

INTERVAL=15

while sleep $INTERVAL
do

sync
echo 3 > /proc/sys/vm/drop_caches
sleep 5
echo 0 > /proc/sys/vm/drop_caches

done
