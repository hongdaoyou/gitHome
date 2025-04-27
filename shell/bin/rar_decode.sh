#!/bin/bash

# set -x
# 解压缩
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local zipFile=$1
    
    local dst=$2

    # 解压缩的目录
    if [ -n "$dst" ];then
        dst=" -d $dst "
    fi

    # set -x
    rar x $zipFile -o+ $dst

}


fun "$@"

