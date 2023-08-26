export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xb/project/ucx/install-debug/lib
export PATH=/home/xb/project/ucx/install-debug/bin:$PATH

#gdb --args ucx_perftest -c 0
ucx_perftest -c 0

