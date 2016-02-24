#!/bin/sh
#################################################################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
##################################################################

busybox mount -o remount,noatime,nodiratime,rw /system
busybox mount -o remount,noatime,nodiratime,rw /data

#default 128
echo 512 > /sys/block/mmcblk0/queue/nr_requests
echo 512 > /sys/block/mmcblk1/queue/nr_requests

#echo 8192 > /sys/block/sda/queue/read_ahead_kb
#echo 8192 > /sys/block/sdb/queue/read_ahead_kb

#echo 8192 > /sys/block/sda/queue/max_sectors_kb
#echo 8192 > /sys/block/sdb/queue/max_sectors_kb

#echo cfq > /sys/block/mmcblk0/queue/scheduler
echo 0 > /sys/block/mmcblk0/queue/iosched/slice_idle
echo 1 > /sys/block/mmcblk0/queue/iosched/low_latency
echo 32 > /sys/block/mmcblk0/queue/iosched/quantum
echo 2 > /sys/block/mmcblk0/queue/iosched/slice_async
echo 10 > /sys/block/mmcblk0/queue/iosched/slice_async_rq

echo 80 > /sys/block/mmcblk0/queue/iosched/fifo_expire_sync
echo 180 > /sys/block/mmcblk0/queue/iosched/fifo_expire_async
echo 20 > /sys/block/mmcblk0/queue/iosched/slice_sync

echo 0 > /sys/block/mmcblk1/queue/iosched/slice_idle
echo 32 > /sys/block/mmcblk1/queue/iosched/quantum

echo 80 > /sys/block/mmcblk1/queue/iosched/fifo_expire_sync
echo 180 > /sys/block/mmcblk1/queue/iosched/fifo_expire_async
