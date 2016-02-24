#!/bin/sh
#############################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
#############################

cd /data/dalvik-cache/
busybox find * -type l -exec busybox rm -f "{}" \;
cp * ../sdext1/dalvik-cache/
rm *

cd /data/sdext1/dalvik-cache/
busybox find * -type f -exec busybox ln -s "/data/sdext1/dalvik-cache/"{} "/data/dalvik-cache/"{} \;


exit