export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xb/project/ucx/install-debug/lib
export PATH=/home/xb/project/ucx/install-debug/bin:$PATH

# 
ucx_perftest 172.17.29.63 -t tag_lat -c 1

# ucx_perftest 192.169.29.63 -t tag_lat -c 1

client:
root@hpc118:~/project/stor/daos/build/external/debug/ucx/src/tools/perf# ucx_perftest 192.168.1.117 -t tag_lat -c 1
+--------------+--------------+------------------------------+---------------------+-----------------------+
|              |              |        latency (usec)        |   bandwidth (MB/s)  |  message rate (msg/s) |
+--------------+--------------+----------+---------+---------+----------+----------+-----------+-----------+
|    Stage     | # iterations | 50.0%ile | average | overall |  average |  overall |  average  |  overall  |
+--------------+--------------+----------+---------+---------+----------+----------+-----------+-----------+
[thread 0]            202322      2.457     2.471     2.471        3.09       3.09      404639      404639
[thread 0]            405505      2.456     2.461     2.466        3.10       3.09      406355      405497
[thread 0]            608693      2.456     2.461     2.464        3.10       3.10      406373      405789
[thread 0]            811900      2.456     2.461     2.463        3.10       3.10      406410      405944
Final:               1000000      2.457     2.460     2.463        3.10       3.10      406432      406036
root@hpc118:~/project/stor/daos/build/external/debug/ucx/src/tools/perf# 

