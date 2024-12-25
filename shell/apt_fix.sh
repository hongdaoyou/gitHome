#!/bin/bash

# set -x
# 修复,dpkg,安装时,缺少的软件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    sudo apt install -f

}


fun "$@"

