# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

SPDK_ROOT=/root/project/tipu/spdk

export daospath=/root/project/stor/daos
export CPATH=${daospath}/install/include/:$CPATH
#export PATH=${daospath}/install/bin/:${daospath}/install/sbin:$PATH
#export PATH=/root/project/stor/daos/install/bin:$PATH:/usr/local/go/bin:/root/project/stor/daos/build/external/debug/ofi/build/fabtests/bin:/root/project/hpc/mpi/ompi/openmpi-install/bin:/root/project/stor/daos/install/prereq/debug/ofi/bin
export GO_BIN=/usr/local/go/bin
#export GOROOT=/usr/local/go

# MPICH ENV
PREFIX=/root/project/hpc/mpi/daos/mpich-3.4.3/install
export PATH="$PREFIX/bin:$PATH"
export LD_LIBRARY_PATH="$PREFIX/lib:$LD_LIBRARY_PATH"
export INCLUDE="$PREFIX/include:$INCLUDE"

# add qemu build path
export PATH=/root/project/virt/qemu/build:$PATH

#export PYTHONPATH=$PYTHONPATH:/root/project/rdma/rdma-core/build/python

ssh_copy_id(){
	for ip in s117 s118;do ssh-copy-id root@$ip;done
}

#ips2='s117 s118 s119 s120'
ips2='s117 s118'
run_cmd_no_master(){
	local command=$*
	if [[ $* == "" ]]; then
		echo "$1 pls give cmd"
	else
		for ip in $ips2; do
			echo -e  "\n\033[32m`date +'%Y/%m/%d %H:%M:%S'` $ip $*\033[0m"
		        if [[ $ip == 's117' ]];then
			        echo -e  "skip master(s117)"
			else
				ssh $ip "${command}"
		        fi
		done
	fi
}

function run_cmd(){
	local command=$*
	if [[ $* == "" ]]; then
	  echo "$1 pls give cmd"
	else
		for ip in $ips2; do
			echo -e  "\n\033[32m`date +'%Y/%m/%d %H:%M:%S'` $ip $*\033[0m"
      if [[ $ip == 's117' ]];then
        eval ${command}
			else
			  ssh $ip "${command}"
      fi
		done
	fi
}

mpi_root(){
	cd /root/project/hpc/mpi/openmpi-5.0.6/
}

ompi_info_run(){
	/root/project/hpc/mpi/openmpi-5.0.6/build/ompi/tools/ompi_info/ompi_info
}

get_mlx_nic(){
  run_cmd "lspci |grep -i mellanox"
}

ibdev(){
	run_cmd "lspci |grep -i mellanox;ibdev2netdev;ibv_devices;ibv_devinfo;ibstat"
}

openibd_status(){
	run_cmd "/etc/init.d/openibd status"
}

gids(){
	run_cmd "show_gids"
}

perftest_root(){
	cd /root/project/rdma/perftest
}

daos_root(){
	cd /root/project/stor/daos
}

daos_ranks(){
	dmg sys query -v
}

daos_destory(){
	run_cmd "pkill daos_agent;pkill daos_server;umount /mnt/daos/1"
}

daos_stop(){
        pkill daos_agent
        pkill daos_server

}

daos_start(){
	mkdir -p /var/run/daos_server
	mkdir -p /var/run/daos_agent
	daos_agent &
	daos_server start &
	echo -e "dmg storage format"
}

daos_restart() {
	daos_stop
	daos_start
}

spdk_tgt_create(){
	cd /root/project/stor/spdk/
	./scripts/rpc.py nvmf_create_transport -t RDMA -u 8192
	./scripts/rpc.py bdev_malloc_create -b Malloc0 1024 512 -u 41a7f127-38ea-4390-b5c6-ab0fed80f5d3
	./scripts/rpc.py nvmf_create_subsystem nqn.2022-06.io.spdk:cnode216 -m 512 -r -a -s SPDK00000000000001 -d SPDK_Controll
	./scripts/rpc.py nvmf_subsystem_add_ns nqn.2022-06.io.spdk:cnode216 Malloc0
	./scripts/rpc.py nvmf_subsystem_add_listener nqn.2022-06.io.spdk:cnode216 -t rdma -a 192.168.1.117 -s 4520
}

xilinx(){
	lspci |grep -i xilinx
}

show_reg_intf(){
	/root/project/debug/dpu-debugutils/reg_display/bin/reg_display -s 01:00.0 -m intf
}

show_reg_all(){
	/root/project/debug/dpu-debugutils/reg_display/bin/reg_display -s 01:00.0
}

show_reg_rdma(){
	/root/project/debug/dpu-debugutils/reg_display/bin/reg_display -s 01:00.0 -m rdmadebug
}

dm(){
	dmesg -Tw
}

ssh_vm () {
	ssh -p 2222 root@localhost
}

qemu_start_vm(){
	/root/project/virt/qemu/build/qemu-system-x86_64 -m 4096 -enable-kvm -cpu host -smp cores=8,sockets=1 -drive file=/root/big/qemu/ubuntu_20.qcow2,if=virtio -nic user,hostfwd=tcp::2222-:22 -fsdev local,security_model=passthrough,id=fsdev0,path=/root/project/linux/v5.15/linux/ -device virtio-9p-pci,fsdev=fsdev0,mount_tag=kernelmake -device usb-ehci,id=usb,bus=pci.0,addr=0x8 -device usb-tablet -vnc :75
}

xilinx_tipu_and_host(){
	run_cmd "lspci | grep -i xilinx"
}

shutdown_tipu_and_host(){
	ssh root@s118 "shutdown -h now"
	shutdown -h now
}

fpga_version() {
/bin/expect <<EOF
set timeout -1
spawn /root/project/debug/pci_debug/dpu-debugutils/pcie_debug-master/bin/pci_debug -s 01:00.0
expect {
    "PCI>" { send "d 200014 100\r" }
}
sleep 1
interact
EOF
}

vblk_spec() {
/bin/expect <<EOF
set timeout -1
spawn /root/project/debug/pci_debug/dpu-debugutils/pcie_debug-master/bin/pci_debug -s 01:00.0
expect {
    "PCI>" { send "d 0x01000114 4\r" }
}
sleep 1
interact
EOF
}

write_reg_aq_entry() {
/bin/expect <<EOF
set timeout -1
spawn /root/project/debug/pci_debug/dpu-debugutils/pcie_debug-master/bin/pci_debug -s 01:00.3
expect {
	"PCI>" { send "c 0x009a8000 0x01000000\r" }
}
expect {
	"PCI>" { send "c 0x009a8000 0x01000000\r" }
}
expect {
	"PCI>" { send "c 0x009a8008 0x00000000\r" }
}
expect {
	"PCI>" { send "c 0x009a800c 0x00000000\r" }
}
expect {
	"PCI>" { send "c 0x009a8010 0x00000000\r" }
}
expect {
	"PCI>" { send "c 0x009a8014 0x06400000\r" }
}
expect {
	"PCI>" { send "c 0x009a8018 0x00000000\r" }
}
expect {
	"PCI>" { send "c 0x009a801c 0x00000000\r" }
}
expect {
	"PCI>" { send "d 0x009a8000 32\r" }
}
sleep 1
interact
EOF
}

load_uio_driver() {
	cd /root/project/tipu/dpdk-kernel/
	./load_driver_and_bind_dev2uio.sh
	cd -
}

load_af_driver() {
	cd /root/project/tipu/prj1_v2_dpu_kernel_eth_driver/
	./load_driver.sh
	cd -
}

spdk_start_virtio() {
	# LD_LIBRARY_PATH=${SPDK_ROOT}/build/lib/ ${SPDK_ROOT}/build/bin/virtio_emulator --iova-mode pa -m 0xF0 -L virtio_adapter -L emu_device
	LD_LIBRARY_PATH=${SPDK_ROOT}/build/lib/ ${SPDK_ROOT}/build/bin/virtio_emulator --iova-mode pa -m 0xF0 -L virtio_adapter -L emu_device -L logdump -L all
}

spdk_create_virtio_blk() {
	${SPDK_ROOT}/scripts/rpc.py bdev_malloc_create -b blk_bdev 1024 512
	PYTHONPATH=${SPDK_ROOT}/python/tipu ${SPDK_ROOT}/scripts/rpc.py --plugin tipu_rpc_plugin emu_create_virtio_blk_dev emu_blk blk_bdev
}

spdk_delete_virtio_blk() {
	sudo PYTHONPATH=${SPDK_ROOT}/python/tipu ${SPDK_ROOT}/scripts/rpc.py --plugin tipu_rpc_plugin emu_delete_virtio_dev emu_blk
	${SPDK_ROOT}/scripts/rpc.py bdev_malloc_delete blk_bdev
}

spdk_create_virtio_fs () {
	mkdir -p /mnt/test
	sudo PYTHONPATH=${SPDK_ROOT}/python/tipu ${SPDK_ROOT}/scripts/rpc.py --plugin tipu_rpc_plugin emu_create_virtio_fs_dev "virtiofs0" "/mnt/test" "vfs0"

}

spdk_delete_virtio_fs() {
	sudo PYTHONPATH=${SPDK_ROOT}/python/tipu ${SPDK_ROOT}/scripts/rpc.py --plugin tipu_rpc_plugin emu_delete_virtio_dev "virtiofs0"
}

pci_reg (){
	/root/project/debug/pci_debug/dpu-debugutils/pcie_debug-master/bin/pci_debug -s 01:00.0 -d
}

fpga_update(){
	mkdir -p /opt/localnet/EDA1
	mount -t nfs 10.20.10.83:/opt/localnet/EDA1 /opt/localnet/EDA1
	source /opt/localnet/EDA1/xilinx/Vivado/2023.2/settings64.sh
	vivado
}

fpga_count(){
	/root/project/debug/dpu-debugutils/reg_display/bin/reg_display -s 01:00.0
}

pci_dbg_clean_count() {
# apt-get install expect -y
/bin/expect <<EOF
set timeout -1
spawn /root/project/debug/pci_debug/dpu-debugutils/pcie_debug-master/bin/pci_debug -s 01:00.0
expect {
    "PCI>" { send "c 1000018 1\r" }
}
expect {
    "PCI>" { send "c 380084 1\r" }
}
expect {
    "PCI>" { send "d 380084 100\r" }
}
sleep 1
interact
EOF
fpga_count
}

show_cqe_num() {
/bin/expect <<EOF
set timeout -1
spawn /root/project/debug/pci_debug/dpu-debugutils/pcie_debug-master/bin/pci_debug -s 01:00.0
expect {
    "PCI>" { send "d 28a1cc 4\r" }
}
sleep 1
interact
EOF
}


load_driver(){
	cd /root/project/rdma/dpu_kernel_rdma
	./load_driver.sh
	cd -
}

mlx(){
	lspci|grep -i mellanox
}

debug_module(){
	echo 'module rdma_ucm +p' > /sys/kernel/debug/dynamic_debug/control
	echo 'module rdma_cm +p' > /sys/kernel/debug/dynamic_debug/control
	echo 'module ib_cm +p' > /sys/kernel/debug/dynamic_debug/control
	echo 'module ib_uverbs +p' > /sys/kernel/debug/dynamic_debug/control
	echo 'module ib_core +p' > /sys/kernel/debug/dynamic_debug/control
	echo 'module ib_core +p' > /sys/kernel/debug/dynamic_debug/control
}

show_register_all(){
	cd /root/project/debug/dpu-debugutils/reg_display/bin
	AF_BDF=01:00.0
	./reg_display/bin/reg_display -s $AF_BDF
	cd -
}

rdma_debug(){
	cd ~/project/debug/rdma_debug/dpu_kernel_rdma/
	./xtrdma_debugfs_tool
}

tcpdump_xt(){
	tcpdump -i ens2f0 -w ens2f0_xt.pcap
}
