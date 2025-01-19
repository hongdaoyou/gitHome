#!/bin/bash

# set -x

function ssh_copy_id_public_key() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local fileName=$1
    
    local url=$2
    # 不存在,就设置默认值
    local port=$3
    port=${port:=22}

    echo $port
    if [ ! -f $fileName ]; then
        echo "该文件,不存在"; exit 1;
    fi

    ssh-copy-id -i $fileName -p $port $url -o PubkeyAuthentication=no

}


ssh_copy_id_public_key $@

