#!/bin/sh
#################################################################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
##################################################################
   
SOURCE="/data/sdext1/dalvik-cache/"
DEST="/data/dalvik-cache2"
    
cd /data/app/
busybox find * -type l -exec busybox rm -f "{}" \;
cp * ../sdext1/APP2SD/
rm *

cd /data/sdext1/APP2SD/
busybox find * -type f -exec busybox ln -s "/data/sdext1/APP2SD/"{} "/data/app/"{} \;

exit