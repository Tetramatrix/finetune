#!/system/xbin/ash
#################################################################
#  Copyright notice
#  (c) 2008-2016 Chi Hoang 
##################################################################

cd /proc/sys/vm/
echo 1250 > dirty_writeback_centisecs
echo 45 > swappiness 
echo "1250" > /proc/sys/vm/dirty_expire_centisecs
echo "25" > /proc/sys/vm/dirty_ratio
echo "10" > /proc/sys/vm/dirty_background_ratio
echo "1" > /proc/sys/vm/oom_kill_allocating_task
echo "250" > /proc/sys/vm/vfs_cache_pressure
echo "2" > /proc/sys/vm/overcommit_memory
echo "100" > /proc/sys/vm/overcommit_ratio
#default 5
#echo 7 > /proc/sys/vm/page-cluster
#echo 4096 > /proc/sys/vm/min_free_kbytes
#echo 512 > /proc/sys/vm/min_free_kbytes