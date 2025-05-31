#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,根设备的地址"; exit 1;
    fi
    local rootDev=${1}
    local s=$1

    sudo mkdir /mnt/sysroot
    
    sudo mount $rootDev /mnt/sysroot  # 替换为你的根分区


    # 挂载,必要的虚拟文件系统: 将本地的,相当于,挂载到 具体的为主
    sudo mount --bind /dev /mnt/sysroot/dev
    sudo mount --bind /proc /mnt/sysroot/proc
    sudo mount --bind /sys /mnt/sysroot/sys

    # 进入chroot环境:
    sudo chroot /mnt/sysroot

}


fun "$@"

