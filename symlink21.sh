#!/bin/sh

#############################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang
#############################

SOURCE="/data/sdext2/dalvik-cache/"
DEST="/data/dalvik-cache2"
    
cd /data/app/
busybox find * -type l -exec busybox rm -f "{}" \;
cp * /cache/appcache/
rm *

cd /cache/appcache/
busybox find * -type f -exec busybox ln -s "/cache/appcache/"{} "/data/app/"{} \;

exit