#!/bin/bash

# set -x
# 拷贝,远程的文件,到本地 
function fun() {
    if [ $# -lt 3 ];then
        echo "请输入,参数"; exit 1;
    fi
    local src=$1
    local dst=$2

    local host=$3  ### 类似 hdyTest@www.hongdaoyou.cn
    local port=${4:-22}

    # scp -P 2222  showdown.min.js  hdyTest@www.hongdaoyou.cn:/var/www/html/js/showdown.min.js
    # set -x
    scp -P $port  $host:$src  $dst
}


fun "$@"

