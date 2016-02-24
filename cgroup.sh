#!/bin/sh
##############################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
##############################

INTERVAL=15

while sleep $INTERVAL
do

sync
echo 3 > /proc/sys/vm/drop_caches
sleep 5
echo 0 > /proc/sys/vm/drop_caches

echo "1" > /dev/cgroup/cpu/desktop/notify_on_release
echo "1" > /dev/cgroup/cpu/applications/notify_on_release
echo "555555" > /dev/cgroup/cpu/cpu.rt_runtime_us
echo "600000" > /dev/cgroup/cpu/cpu.rt_period_us
echo "555555" > /dev/cgroup/cpu/user/cpu.rt_runtime_us
echo "600000" > /dev/cgroup/cpu/user/cpu.rt_period_us
echo "512" > /dev/cgroup/cpu/cpu.shares
echo "512" > /dev/cgroup/cpu/desktop/cpu.shares
echo "512" > /dev/cgroup/cpu/applications/cpu.shares
echo "25M" > /dev/cgroup/cpu/desktop/memory.limit_in_bytes
echo "95M" > /dev/cgroup/cpu/user/memory.limit_in_bytes 

done
