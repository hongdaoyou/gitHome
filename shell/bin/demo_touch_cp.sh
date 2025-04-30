#!/bin/bash

# set -x
# 传入,源文件. 创建,demo文件
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local src=$1
    local dst=$2

    # 目录
    local dir=$(dirname $src)

    cd $dir

    # 创建 目标文件
    demo_create_cp.sh $dst

}


fun "$@"

