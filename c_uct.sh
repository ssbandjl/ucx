export UCX_LOG_LEVEL=debug

# /home/xb/project/ucx/examples/.libs/lt-uct_hello_world -d mlx5_0:1 -t rc_verbs -n 172.17.29.63

ibdev2netdev

cd examples/.libs
./uct_hello_world -d mlx5_1:1 -t rc_verbs -n 192.168.1.118


root@hpc118:~/project/net/ucx/examples/.libs# ./uct_hello_world -d mlx5_1:1 -t rc_verbs -n 192.168.1.117
[1747555645.158979] [hpc118:46155:0]           debug.c:1157 UCX  DEBUG using signal stack 0x7f9b62c52000 size 141824
[1747555645.181719] [hpc118:46155:0]            init.c:120  UCX  DEBUG /root/project/net/ucx/install-debug/lib/libucs.so.0 loaded at 0x7f9b63076000
[1747555645.181782] [hpc118:46155:0]            init.c:122  UCX  DEBUG cmd line: ./uct_hello_world -d mlx5_1:1 -t rc_verbs -n 192.168.1.117 
[1747555645.181814] [hpc118:46155:0]          module.c:72   UCX  DEBUG ucs library path: /root/project/net/ucx/install-debug/lib/libucs.so.0
[1747555645.181828] [hpc118:46155:0]          module.c:304  UCX  DEBUG loading modules for ucs
INFO: UCT_HELLO_WORLD AM function = uct_ep_am_short server = 192.168.1.117 port = 13337, parse_cmd uct_hello_world.c:515 
[1747555645.182524] [hpc118:46155:0]          module.c:304  UCX  DEBUG loading modules for uct
[1747555645.182525] [hpc118:46155:f]        vfs_fuse.c:424  UCX  DEBUG connecting vfs socket 3 to daemon on '/run/user/0/ucx/vfs.sock'
[1747555645.182599] [hpc118:46155:f]        vfs_fuse.c:432  UCX  DEBUG failed to connect to vfs socket '/run/user/0/ucx/vfs.sock': No such file or directory
[1747555645.182652] [hpc118:46155:f]        vfs_fuse.c:313  UCX  DEBUG waiting for creation of 'vfs.sock' in '/run/user/0/ucx'
[1747555645.183491] [hpc118:46155:0]          module.c:304  UCX  DEBUG loading modules for uct_ib
[1747555645.186344] [hpc118:46155:0]            topo.c:938  UCX  DEBUG /sys/class/net/enp6s0: PF sysfs path is '/sys/devices/pci0000:00/0000:00:1c.2/0000:06:00.0'
[1747555645.186451] [hpc118:46155:0]            topo.c:304  UCX  DEBUG added sys_dev 0 for bus id 06:00.0
[1747555645.186465] [hpc118:46155:0]            topo.c:560  UCX  DEBUG enp6s0: bdf_name 0000:06:00.0 sys_dev 0
[1747555645.186797] [hpc118:46155:0]            topo.c:938  UCX  DEBUG /sys/class/net/ens6f0np0: PF sysfs path is '/sys/devices/pci0000:00/0000:00:02.0/0000:03:00.0'
[1747555645.186877] [hpc118:46155:0]            topo.c:304  UCX  DEBUG added sys_dev 1 for bus id 03:00.0
[1747555645.186887] [hpc118:46155:0]            topo.c:560  UCX  DEBUG ens6f0np0: bdf_name 0000:03:00.0 sys_dev 1
[1747555645.187204] [hpc118:46155:0]            topo.c:938  UCX  DEBUG /sys/class/net/ens6f1np1: PF sysfs path is '/sys/devices/pci0000:00/0000:00:02.0/0000:03:00.1'
[1747555645.187280] [hpc118:46155:0]            topo.c:304  UCX  DEBUG added sys_dev 2 for bus id 03:00.1
[1747555645.187289] [hpc118:46155:0]            topo.c:560  UCX  DEBUG ens6f1np1: bdf_name 0000:03:00.1 sys_dev 2
[1747555645.187595] [hpc118:46155:0]            topo.c:935  UCX  DEBUG /sys/class/net/lo: sysfs path undetected
[1747555645.187607] [hpc118:46155:0]            topo.c:564  UCX  DEBUG lo: system device unknown
[1747555645.193119] [hpc118:46155:0]       ib_efa_md.c:38   UCX  DEBUG efadv_query_device(mlx5_0) failed: 95
[1747555645.194101] [hpc118:46155:0]           ib_md.c:1058 UCX  DEBUG mlx5_0: md open by 'uct_ib_efa_md_ops' failed, trying next
[1747555645.217469] [hpc118:46155:0]            topo.c:938  UCX  DEBUG /sys/class/infiniband/mlx5_0: PF sysfs path is '/sys/devices/pci0000:00/0000:00:02.0/0000:03:00.0'
[1747555645.217503] [hpc118:46155:0]            topo.c:560  UCX  DEBUG mlx5_0: bdf_name 0000:03:00.0 sys_dev 1
[1747555645.217566] [hpc118:46155:0]       ib_device.c:532  UCX  DEBUG mlx5_0: vendor_id 0x15b3 device_id 4127
[1747555645.218481] [hpc118:46155:0]    ib_mlx5dv_md.c:1953 UCX  DEBUG mlx5_0: mkey_by_name_reserve is not supported
[1747555645.218496] [hpc118:46155:0]    ib_mlx5dv_md.c:1936 UCX  DEBUG mlx5_0: dp_ordering support: force=0 ooo_rw_rc=0 ooo_rw_dc=0
[1747555645.218730] [hpc118:46155:0]    ib_mlx5dv_md.c:1727 UCX  DEBUG mlx5_0: ODP is disabled because version 1 is not supported for DevX QP
[1747555645.219014] [hpc118:46155:0]           async.c:247  UCX  DEBUG added async handler 0x55da7b511bc0 [id=6 ref 1] ???() to hash
[1747555645.219194] [hpc118:46155:0]           async.c:521  UCX  DEBUG listening to async event fd 6 events 0x1 mode thread_spinlock
[1747555645.219214] [hpc118:46155:0]       ib_device.c:643  UCX  DEBUG initialized device 'mlx5_0' (InfiniBand channel adapter) with 1 ports
[1747555645.219236] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: cuda GPUDirect RDMA is not detected by checking /sys/kernel/mm/memory_peers/nv_mem/version
[1747555645.219250] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: cuda GPUDirect RDMA is not detected by checking /sys/module/nvidia_peermem/version
[1747555645.219262] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: cuda GPUDirect RDMA is not detected by checking /sys/module/nv_peer_mem/version
[1747555645.219277] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: rocm GPUDirect RDMA is not detected by checking /dev/kfd
[1747555645.219307] [hpc118:46155:0]           ib_md.c:1244 UCX  DEBUG mlx5_0: dmabuf is supported
[1747555645.219326] [hpc118:46155:0]           mpool.c:136  UCX  DEBUG mpool devx dbrec: align 64, maxelems 4294967295, elemsize 40
[1747555645.219805] [hpc118:46155:0]    ib_mlx5dv_md.c:2444 UCX  DEBUG mlx5_0: opened DEVX md log_max_qp=17
[1747555645.220921] [hpc118:46155:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_0: KSM dm memory registration status "Success" range 0x7f9b62c3f000..0x7f9b62c3f020 iova 0x0 mkey_index 0x0
[1747555645.221459] [hpc118:46155:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_0: KSM atomic-key memory registration status "Success" range (nil)..0x20 iova 0x7f9b62c3f000 atomic mkey_index 0x0
[1747555645.222918] [hpc118:46155:0]           ib_md.c:1202 UCX  DEBUG mlx5_0: relaxed order memory access is disabled
[1747555645.223466] [hpc118:46155:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_0: KSM flush-mr memory registration status "Success" range 0x55da7b55e000..0x55da7b55e008 iova 0x0 mkey_index 0x0
[1747555645.223702] [hpc118:46155:0]         ib_mlx5.h:998  UCX  DEBUG mlx5dv_devx_general_cmd(ALLOW_OTHER_VHCA_ACCESS) failed on mlx5_0, syndrome 0x0: Invalid argument
[1747555645.223710] [hpc118:46155:0]    ib_mlx5dv_md.c:2497 UCX  DEBUG mlx5_0: XGVMI is not supported
[1747555645.223717] [hpc118:46155:0]           ib_md.c:1062 UCX  DEBUG mlx5_0: md open by 'uct_ib_mlx5_devx_md_ops' is successful
[1747555645.236067] [hpc118:46155:0]          uct_md.c:96   UCX  DEBUG failed to query srd resources: No such device
[1747555645.236097] [hpc118:46155:0]    ib_mlx5dv_md.c:2533 UCX  DEBUG mlx5_0: md=0x55da7b51a000 md->flags=0x3f11fbb flush_rkey=0x184300
[1747555645.236792] [hpc118:46155:0]           mpool.c:194  UCX  DEBUG mpool devx dbrec destroyed
[1747555645.236814] [hpc118:46155:0]       ib_device.c:664  UCX  DEBUG destroying ib device mlx5_0
[1747555645.236829] [hpc118:46155:0]           async.c:172  UCX  DEBUG removed async handler 0x55da7b511bc0 [id=6 ref 1] ???() from hash
[1747555645.236838] [hpc118:46155:0]           async.c:575  UCX  DEBUG removing async handler 0x55da7b511bc0 [id=6 ref 1] ???()
[1747555645.237009] [hpc118:46155:0]           async.c:187  UCX  DEBUG release async handler 0x55da7b511bc0 [id=6 ref 0] ???()
[1747555645.263656] [hpc118:46155:0]       ib_efa_md.c:38   UCX  DEBUG efadv_query_device(mlx5_1) failed: 95
[1747555645.264744] [hpc118:46155:0]           ib_md.c:1058 UCX  DEBUG mlx5_1: md open by 'uct_ib_efa_md_ops' failed, trying next
[1747555645.271488] [hpc118:46155:0]            topo.c:938  UCX  DEBUG /sys/class/infiniband/mlx5_1: PF sysfs path is '/sys/devices/pci0000:00/0000:00:02.0/0000:03:00.1'
[1747555645.271507] [hpc118:46155:0]            topo.c:560  UCX  DEBUG mlx5_1: bdf_name 0000:03:00.1 sys_dev 2
[1747555645.271543] [hpc118:46155:0]       ib_device.c:532  UCX  DEBUG mlx5_1: vendor_id 0x15b3 device_id 4127
[1747555645.272421] [hpc118:46155:0]    ib_mlx5dv_md.c:1953 UCX  DEBUG mlx5_1: mkey_by_name_reserve is not supported
[1747555645.272430] [hpc118:46155:0]    ib_mlx5dv_md.c:1936 UCX  DEBUG mlx5_1: dp_ordering support: force=0 ooo_rw_rc=0 ooo_rw_dc=0
[1747555645.272626] [hpc118:46155:0]    ib_mlx5dv_md.c:1727 UCX  DEBUG mlx5_1: ODP is disabled because version 1 is not supported for DevX QP
[1747555645.272850] [hpc118:46155:0]           async.c:247  UCX  DEBUG added async handler 0x55da7b511bc0 [id=6 ref 1] ???() to hash
[1747555645.272955] [hpc118:46155:0]           async.c:521  UCX  DEBUG listening to async event fd 6 events 0x1 mode thread_spinlock
[1747555645.272966] [hpc118:46155:0]       ib_device.c:643  UCX  DEBUG initialized device 'mlx5_1' (InfiniBand channel adapter) with 1 ports
[1747555645.272979] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_1: cuda GPUDirect RDMA is not detected by checking /sys/kernel/mm/memory_peers/nv_mem/version
[1747555645.272988] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_1: cuda GPUDirect RDMA is not detected by checking /sys/module/nvidia_peermem/version
[1747555645.272995] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_1: cuda GPUDirect RDMA is not detected by checking /sys/module/nv_peer_mem/version
[1747555645.273004] [hpc118:46155:0]           ib_md.c:1217 UCX  DEBUG mlx5_1: rocm GPUDirect RDMA is not detected by checking /dev/kfd
[1747555645.273024] [hpc118:46155:0]           ib_md.c:1244 UCX  DEBUG mlx5_1: dmabuf is supported
[1747555645.273032] [hpc118:46155:0]           mpool.c:136  UCX  DEBUG mpool devx dbrec: align 64, maxelems 4294967295, elemsize 40
[1747555645.273476] [hpc118:46155:0]    ib_mlx5dv_md.c:2444 UCX  DEBUG mlx5_1: opened DEVX md log_max_qp=17
[1747555645.274480] [hpc118:46155:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_1: KSM dm memory registration status "Success" range 0x7f9b62c3f000..0x7f9b62c3f020 iova 0x0 mkey_index 0x0
[1747555645.274971] [hpc118:46155:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_1: KSM atomic-key memory registration status "Success" range (nil)..0x20 iova 0x7f9b62c3f000 atomic mkey_index 0x0
[1747555645.276452] [hpc118:46155:0]           ib_md.c:1202 UCX  DEBUG mlx5_1: relaxed order memory access is disabled
[1747555645.277011] [hpc118:46155:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_1: KSM flush-mr memory registration status "Success" range 0x55da7b56c000..0x55da7b56c008 iova 0x0 mkey_index 0x0
[1747555645.277245] [hpc118:46155:0]         ib_mlx5.h:998  UCX  DEBUG mlx5dv_devx_general_cmd(ALLOW_OTHER_VHCA_ACCESS) failed on mlx5_1, syndrome 0x0: Invalid argument
[1747555645.277252] [hpc118:46155:0]    ib_mlx5dv_md.c:2497 UCX  DEBUG mlx5_1: XGVMI is not supported
[1747555645.277257] [hpc118:46155:0]           ib_md.c:1062 UCX  DEBUG mlx5_1: md open by 'uct_ib_mlx5_devx_md_ops' is successful
[1747555645.289466] [hpc118:46155:0]          uct_md.c:96   UCX  DEBUG failed to query srd resources: No such device
[1747555645.289649] [hpc118:46155:0]        ib_iface.c:1181 UCX  DEBUG using pkey[0] 0xffff on mlx5_1:1/RoCE
[1747555645.289819] [hpc118:46155:0]       ib_device.c:1132 UCX  DEBUG mlx5_1:1 using gid_index 3
[1747555645.291640] [hpc118:46155:0]        ib_iface.c:1790 UCX  DEBUG created uct_ib_iface_t headroom_ofs 12 payload_ofs 16 hdr_ofs 15 data_sz 8256
[1747555645.291707] [hpc118:46155:0]           mpool.c:136  UCX  DEBUG mpool rc_recv_desc: align 64, maxelems 4294967295, elemsize 8279
[1747555645.291721] [hpc118:46155:0]           mpool.c:136  UCX  DEBUG mpool rc_send_desc: align 64, maxelems 4294967295, elemsize 8328
[1747555645.292010] [hpc118:46155:0]           mpool.c:136  UCX  DEBUG mpool send-ops-mpool: align 64, maxelems 4294967295, elemsize 56
[1747555645.293019] [hpc118:46155:0]           mpool.c:136  UCX  DEBUG mpool pending-ops: align 1, maxelems 4294967295, elemsize 64
[1747555645.293053] [hpc118:46155:0]           mpool.c:136  UCX  DEBUG mpool rc_verbs_short_desc: align 64, maxelems 4294967295, elemsize 200
[1747555645.293782] [hpc118:46155:0]        ib_iface.c:1300 UCX  DEBUG mlx5_1: iface 0x55da7b573290 created RC QP 0x1ab on mlx5_1:1 TX wr:409 sge:5 inl:124 resp:64 RX wr:0 sge:0 resp:64
[1747555645.305935] [hpc118:46155:0]           mpool.c:281  UCX  DEBUG mpool rc_recv_desc: allocated chunk 0x7f9b59a00018 of 37748712 bytes with 4537 elements
Using rc_verbs/mlx5_1:1 dev_tl_lookup uct_hello_world.c:393
[1747555645.307774] [hpc118:46155:0]        ib_iface.c:1300 UCX  DEBUG mlx5_1: iface 0x55da7b573290 created RC QP 0x1ac on mlx5_1:1 TX wr:409 sge:5 inl:124 resp:64 RX wr:0 sge:0 resp:64
[1747555645.307798] [hpc118:46155:0]           rc_ep.c:165  UCX  DEBUG created rc ep 0x55da7b5153f0
[1747555645.309502] [hpc118:46155:0]        ib_iface.c:1033 UCX  DEBUG iface 0x55da7b573290: ah_attr dlid=49152 sl=0 port=1 src_path_bits=0 dgid=::ffff:192.168.1.117 flow_label=0xffffffff sgid_index=3 traffic_class=106
[1747555645.312146] [hpc118:46155:0]        rc_iface.c:923  UCX  DEBUG connected rc qp 0x1ac on mlx5_1:1/RoCE to lid 49152(+0) sl 0 remote_qp 0xa9 mtu 1024 timer 18x7 rnr 13x7 rd_atom 16
[1747555645.313228] [hpc118:46155:0]           rc_ep.c:185  UCX  DEBUG destroy rc ep 0x55da7b5153f0
[1747555645.313544] [hpc118:46155:a]       ib_device.c:514  UCX  DEBUG IB Async event on mlx5_1: SRQ-attached QP 0x1ac was flushed
[1747555645.315339] [hpc118:46155:0]           mpool.c:194  UCX  DEBUG mpool rc_verbs_short_desc destroyed
[1747555645.315868] [hpc118:46155:0]           mpool.c:194  UCX  DEBUG mpool send-ops-mpool destroyed
[1747555645.315881] [hpc118:46155:0]           mpool.c:194  UCX  DEBUG mpool rc_send_desc destroyed
[1747555645.316159] [hpc118:46155:0]           mpool.c:194  UCX  DEBUG mpool rc_recv_desc destroyed
[1747555645.316176] [hpc118:46155:0]           mpool.c:194  UCX  DEBUG mpool pending-ops destroyed
[1747555645.316989] [hpc118:46155:0]    ib_mlx5dv_md.c:2533 UCX  DEBUG mlx5_1: md=0x55da7b560520 md->flags=0x3f11fbb flush_rkey=0x1c0300
[1747555645.317632] [hpc118:46155:0]           mpool.c:194  UCX  DEBUG mpool devx dbrec destroyed
[1747555645.317641] [hpc118:46155:0]       ib_device.c:664  UCX  DEBUG destroying ib device mlx5_1
[1747555645.317649] [hpc118:46155:0]           async.c:172  UCX  DEBUG removed async handler 0x55da7b511bc0 [id=6 ref 1] ???() from hash
[1747555645.317655] [hpc118:46155:0]           async.c:575  UCX  DEBUG removing async handler 0x55da7b511bc0 [id=6 ref 1] ???()
[1747555645.317747] [hpc118:46155:0]           async.c:187  UCX  DEBUG release async handler 0x55da7b511bc0 [id=6 ref 0] ???()

