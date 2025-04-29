#!/bin/bash

# set -x
# 拷贝,本地的文件,到远程. 相互 
function fun() {
    if [ $# -lt 3 ];then
        echo "请输入,参数"; exit 1;
    fi
    # local src=$1
    # local dst=$2

    # local host=$3  ### 类似 hdyTest@www.hongdaoyou.cn
    # local port=${4:-22}

    # # scp -P 2222  showdown.min.js  hdyTest@www.hongdaoyou.cn:/var/www/html/js/showdown.min.js
    # # set -x
    # scp -P $port  $src  $host:$dst

    # cp_local_to_remote_scp.sh a.asm hongdaoyou.cn:/var/www/html 2222

    local src=$1
    local dst=$2

    local port=$3

    scp -P $port  $src  $dst


}


fun "$@"

