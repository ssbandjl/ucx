export UCX_LOG_LEVEL=debug
# /home/xb/project/ucx/examples/.libs/lt-uct_hello_world -d mlx5_0:1 -t rc_verbs

cd examples/.libs
./uct_hello_world -d mlx5_0:1 -t rc_verbs

root@hpc117:~/project/net/ucx/examples/.libs# ./uct_hello_world -d mlx5_0:1 -t rc_verbs
[1747555430.618234] [hpc117:41871:0]           debug.c:1157 UCX  DEBUG using signal stack 0x7f7bc5a00000 size 141824
[1747555430.637367] [hpc117:41871:0]            init.c:120  UCX  DEBUG /root/project/net/ucx/install-debug/lib/libucs.so.0 loaded at 0x7f7bc5e3a000
[1747555430.637406] [hpc117:41871:0]            init.c:122  UCX  DEBUG cmd line: ./uct_hello_world -d mlx5_0:1 -t rc_verbs 
[1747555430.637424] [hpc117:41871:0]          module.c:72   UCX  DEBUG ucs library path: /root/project/net/ucx/install-debug/lib/libucs.so.0
[1747555430.637433] [hpc117:41871:0]          module.c:304  UCX  DEBUG loading modules for ucs
INFO: UCT_HELLO_WORLD AM function = uct_ep_am_short server = (null) port = 13337, parse_cmd uct_hello_world.c:515 
[1747555430.639759] [hpc117:41871:0]          module.c:304  UCX  DEBUG loading modules for uct
[1747555430.639776] [hpc117:41871:f]        vfs_fuse.c:424  UCX  DEBUG connecting vfs socket 3 to daemon on '/run/user/0/ucx/vfs.sock'
[1747555430.639839] [hpc117:41871:f]        vfs_fuse.c:432  UCX  DEBUG failed to connect to vfs socket '/run/user/0/ucx/vfs.sock': No such file or directory
[1747555430.639898] [hpc117:41871:f]        vfs_fuse.c:313  UCX  DEBUG waiting for creation of 'vfs.sock' in '/run/user/0/ucx'
[1747555430.640453] [hpc117:41871:0]          module.c:304  UCX  DEBUG loading modules for uct_ib
[1747555430.643692] [hpc117:41871:0]            topo.c:938  UCX  DEBUG /sys/class/net/enp6s0: PF sysfs path is '/sys/devices/pci0000:00/0000:00:1c.2/0000:06:00.0'
[1747555430.643757] [hpc117:41871:0]            topo.c:304  UCX  DEBUG added sys_dev 0 for bus id 06:00.0
[1747555430.643766] [hpc117:41871:0]            topo.c:560  UCX  DEBUG enp6s0: bdf_name 0000:06:00.0 sys_dev 0
[1747555430.643986] [hpc117:41871:0]            topo.c:938  UCX  DEBUG /sys/class/net/ens6f0np0: PF sysfs path is '/sys/devices/pci0000:00/0000:00:02.0/0000:03:00.0'
[1747555430.644035] [hpc117:41871:0]            topo.c:304  UCX  DEBUG added sys_dev 1 for bus id 03:00.0
[1747555430.644042] [hpc117:41871:0]            topo.c:560  UCX  DEBUG ens6f0np0: bdf_name 0000:03:00.0 sys_dev 1
[1747555430.644514] [hpc117:41871:0]            topo.c:935  UCX  DEBUG /sys/class/net/lo: sysfs path undetected
[1747555430.644523] [hpc117:41871:0]            topo.c:564  UCX  DEBUG lo: system device unknown
[1747555430.653351] [hpc117:41871:0]       ib_efa_md.c:38   UCX  DEBUG efadv_query_device(mlx5_0) failed: 95
[1747555430.654887] [hpc117:41871:0]           ib_md.c:1058 UCX  DEBUG mlx5_0: md open by 'uct_ib_efa_md_ops' failed, trying next
[1747555430.682699] [hpc117:41871:0]            topo.c:938  UCX  DEBUG /sys/class/infiniband/mlx5_0: PF sysfs path is '/sys/devices/pci0000:00/0000:00:02.0/0000:03:00.0'
[1747555430.682730] [hpc117:41871:0]            topo.c:560  UCX  DEBUG mlx5_0: bdf_name 0000:03:00.0 sys_dev 1
[1747555430.682795] [hpc117:41871:0]       ib_device.c:532  UCX  DEBUG mlx5_0: vendor_id 0x15b3 device_id 4127
[1747555430.683822] [hpc117:41871:0]    ib_mlx5dv_md.c:1953 UCX  DEBUG mlx5_0: mkey_by_name_reserve is not supported
[1747555430.683837] [hpc117:41871:0]    ib_mlx5dv_md.c:1936 UCX  DEBUG mlx5_0: dp_ordering support: force=0 ooo_rw_rc=0 ooo_rw_dc=0
[1747555430.684097] [hpc117:41871:0]    ib_mlx5dv_md.c:1727 UCX  DEBUG mlx5_0: ODP is disabled because version 1 is not supported for DevX QP
[1747555430.684394] [hpc117:41871:0]           async.c:247  UCX  DEBUG added async handler 0x55edb50d3010 [id=6 ref 1] ???() to hash
[1747555430.684538] [hpc117:41871:0]           async.c:521  UCX  DEBUG listening to async event fd 6 events 0x1 mode thread_spinlock
[1747555430.684555] [hpc117:41871:0]       ib_device.c:643  UCX  DEBUG initialized device 'mlx5_0' (InfiniBand channel adapter) with 1 ports
[1747555430.684574] [hpc117:41871:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: cuda GPUDirect RDMA is not detected by checking /sys/kernel/mm/memory_peers/nv_mem/version
[1747555430.684588] [hpc117:41871:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: cuda GPUDirect RDMA is not detected by checking /sys/module/nvidia_peermem/version
[1747555430.684599] [hpc117:41871:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: cuda GPUDirect RDMA is not detected by checking /sys/module/nv_peer_mem/version
[1747555430.684610] [hpc117:41871:0]           ib_md.c:1217 UCX  DEBUG mlx5_0: rocm GPUDirect RDMA is not detected by checking /dev/kfd
[1747555430.684633] [hpc117:41871:0]           ib_md.c:1244 UCX  DEBUG mlx5_0: dmabuf is supported
[1747555430.684649] [hpc117:41871:0]           mpool.c:136  UCX  DEBUG mpool devx dbrec: align 64, maxelems 4294967295, elemsize 40
[1747555430.685212] [hpc117:41871:0]    ib_mlx5dv_md.c:2444 UCX  DEBUG mlx5_0: opened DEVX md log_max_qp=17
[1747555430.686734] [hpc117:41871:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_0: KSM dm memory registration status "Success" range 0x7f7bc4e03000..0x7f7bc4e03020 iova 0x0 mkey_index 0x0
[1747555430.687285] [hpc117:41871:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_0: KSM atomic-key memory registration status "Success" range (nil)..0x20 iova 0x7f7bc4e03000 atomic mkey_index 0x0
[1747555430.688698] [hpc117:41871:0]           ib_md.c:1202 UCX  DEBUG mlx5_0: relaxed order memory access is disabled
[1747555430.689325] [hpc117:41871:0]    ib_mlx5dv_md.c:140  UCX  DEBUG mlx5_0: KSM flush-mr memory registration status "Success" range 0x55edb50d1000..0x55edb50d1008 iova 0x0 mkey_index 0x0
[1747555430.689767] [hpc117:41871:0]         ib_mlx5.h:998  UCX  DEBUG mlx5dv_devx_general_cmd(ALLOW_OTHER_VHCA_ACCESS) failed on mlx5_0, syndrome 0x0: Invalid argument
[1747555430.689775] [hpc117:41871:0]    ib_mlx5dv_md.c:2497 UCX  DEBUG mlx5_0: XGVMI is not supported
[1747555430.689781] [hpc117:41871:0]           ib_md.c:1062 UCX  DEBUG mlx5_0: md open by 'uct_ib_mlx5_devx_md_ops' is successful
[1747555430.706045] [hpc117:41871:0]          uct_md.c:96   UCX  DEBUG failed to query srd resources: No such device
[1747555430.706344] [hpc117:41871:0]        ib_iface.c:1181 UCX  DEBUG using pkey[0] 0xffff on mlx5_0:1/RoCE
[1747555430.706526] [hpc117:41871:0]       ib_device.c:1132 UCX  DEBUG mlx5_0:1 using gid_index 3
[1747555430.708947] [hpc117:41871:0]        ib_iface.c:1790 UCX  DEBUG created uct_ib_iface_t headroom_ofs 12 payload_ofs 16 hdr_ofs 15 data_sz 8256
[1747555430.709021] [hpc117:41871:0]           mpool.c:136  UCX  DEBUG mpool rc_recv_desc: align 64, maxelems 4294967295, elemsize 8279
[1747555430.709036] [hpc117:41871:0]           mpool.c:136  UCX  DEBUG mpool rc_send_desc: align 64, maxelems 4294967295, elemsize 8328
[1747555430.709328] [hpc117:41871:0]           mpool.c:136  UCX  DEBUG mpool send-ops-mpool: align 64, maxelems 4294967295, elemsize 56
[1747555430.710490] [hpc117:41871:0]           mpool.c:136  UCX  DEBUG mpool pending-ops: align 1, maxelems 4294967295, elemsize 64
[1747555430.710509] [hpc117:41871:0]           mpool.c:136  UCX  DEBUG mpool rc_verbs_short_desc: align 64, maxelems 4294967295, elemsize 200
[1747555430.711615] [hpc117:41871:0]        ib_iface.c:1300 UCX  DEBUG mlx5_0: iface 0x55edb50d9110 created RC QP 0xa8 on mlx5_0:1 TX wr:409 sge:5 inl:124 resp:64 RX wr:0 sge:0 resp:64
[1747555430.723368] [hpc117:41871:0]           mpool.c:281  UCX  DEBUG mpool rc_recv_desc: allocated chunk 0x7f7bbda00018 of 37748712 bytes with 4537 elements
Using rc_verbs/mlx5_0:1 dev_tl_lookup uct_hello_world.c:393
Waiting for connection... connect_common hello_world_util.h:245 
[1747555645.334399] [hpc117:41871:0]        ib_iface.c:1300 UCX  DEBUG mlx5_0: iface 0x55edb50d9110 created RC QP 0xa9 on mlx5_0:1 TX wr:409 sge:5 inl:124 resp:64 RX wr:0 sge:0 resp:64
[1747555645.334447] [hpc117:41871:0]           rc_ep.c:165  UCX  DEBUG created rc ep 0x55edb5089990
[1747555645.335663] [hpc117:41871:0]        ib_iface.c:1033 UCX  DEBUG iface 0x55edb50d9110: ah_attr dlid=49152 sl=0 port=1 src_path_bits=0 dgid=::ffff:192.168.1.118 flow_label=0xffffffff sgid_index=3 traffic_class=106
[1747555645.338376] [hpc117:41871:0]        rc_iface.c:923  UCX  DEBUG connected rc qp 0xa9 on mlx5_0:1/RoCE to lid 49152(+0) sl 0 remote_qp 0x1ac mtu 1024 timer 18x7 rnr 13x7 rd_atom 16


----- UCT TEST SUCCESS ----

[callback] uct_ep_am_short sent ABCDEFGHIJKLMNO (16 bytes)

---------------------------


----- UCT TEST SUCCESS ----

[main] uct_ep_am_short sent ABCDEFGHIJKLMNO (16 bytes)

---------------------------
[1747555645.339486] [hpc117:41871:0]           rc_ep.c:185  UCX  DEBUG destroy rc ep 0x55edb5089990
[1747555645.339675] [hpc117:41871:a]       ib_device.c:514  UCX  DEBUG IB Async event on mlx5_0: SRQ-attached QP 0xa9 was flushed
[1747555645.341630] [hpc117:41871:0]           mpool.c:194  UCX  DEBUG mpool rc_verbs_short_desc destroyed
[1747555645.342357] [hpc117:41871:0]           mpool.c:194  UCX  DEBUG mpool send-ops-mpool destroyed
[1747555645.342379] [hpc117:41871:0]           mpool.c:194  UCX  DEBUG mpool rc_send_desc destroyed
[1747555645.342721] [hpc117:41871:0]           mpool.c:194  UCX  DEBUG mpool rc_recv_desc destroyed
[1747555645.342735] [hpc117:41871:0]           mpool.c:194  UCX  DEBUG mpool pending-ops destroyed
[1747555645.343831] [hpc117:41871:0]    ib_mlx5dv_md.c:2533 UCX  DEBUG mlx5_0: md=0x55edb50cfba0 md->flags=0x3f11fbb flush_rkey=0x184300
[1747555645.344532] [hpc117:41871:0]           mpool.c:194  UCX  DEBUG mpool devx dbrec destroyed
[1747555645.344554] [hpc117:41871:0]       ib_device.c:664  UCX  DEBUG destroying ib device mlx5_0
[1747555645.344569] [hpc117:41871:0]           async.c:172  UCX  DEBUG removed async handler 0x55edb50d3010 [id=6 ref 1] ???() from hash
[1747555645.344577] [hpc117:41871:0]           async.c:575  UCX  DEBUG removing async handler 0x55edb50d3010 [id=6 ref 1] ???()
[1747555645.344731] [hpc117:41871:0]           async.c:187  UCX  DEBUG release async handler 0x55edb50d3010 [id=6 ref 0] ???()
root@hpc117:~/project/net/ucx/examples/.libs# 
