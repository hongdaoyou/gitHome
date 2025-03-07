#!/bin/bash

# set -x
# 测试,git 是否ping 通
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    ssh -T git@github.com

}


fun "$@"

