#!/bin/sh
#############################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
#############################

cd /data/data/

find . -name "cache" -type d -exec mkdir -p "/mnt/sdcard/CacheApps/"{} \;

find . -name "cache" -type d -exec busybox cp -a "/data/data/"{}"/." "/mnt/sdcard/CacheApps/"{}"/" \;

find . -name "cache" -type l -exec busybox rm "/data/data/"{} \;

find . -name "cache" -type d -exec busybox rm -r "/data/data/"{} \;

cd /mnt/sdcard/CacheApps/

find . -name "cache" -type d -exec busybox ln -s "/mnt/sdcard/CacheApps/"{} "/data/data/"{} \;

exit