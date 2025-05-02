#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1

    # 但是,无法,显示,速度
    # sudo snap install $soft 2>&1 | grep -E 'Download|Installing|error|success|安装|错误:'

    sudo snap install $soft  | less

}


fun "$@"

