#!/bin/bash

# set -x
# 查看,当前的 连接
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1

    nmcli connection show
}


fun "$@"

