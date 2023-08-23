export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xb/project/ucx/install-debug/lib
export PATH=/home/xb/project/ucx/install-debug/bin:$PATH

# 
ucx_perftest 172.17.29.63 -t tag_lat -c 1

# ucx_perftest 192.169.29.63 -t tag_lat -c 1
