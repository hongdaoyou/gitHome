#!/bin/bash

# set -x
# 查看,当前docker的下载地址等
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    sudo docker info

}


fun "$@"

