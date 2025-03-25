export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xb/project/ucx/install-debug/lib
export PATH=/home/xb/project/ucx/install-debug/bin:$PATH

#gdb --args ucx_perftest -c 0
ucx_perftest -c 0

server:
root@hpc117:~/project/stor/daos/build/external/debug/ucx/src/tools/perf# ucx_perftest -c 0
Waiting for connection...
Accepted connection from 192.168.1.118:35516
+----------------------------------------------------------------------------------------------------------+
| API:          protocol layer                                                                             |
| Test:         tag match latency                                                                          |
| Data layout:  (automatic)                                                                                |
| Send memory:  host                                                                                       |
| Recv memory:  host                                                                                       |
| Message size: 8                                                                                          |
| Window size:  1                                                                                          |
+----------------------------------------------------------------------------------------------------------+
root@hpc117:~/project/stor/daos/build/external/debug/ucx/src/tools/perf# 


