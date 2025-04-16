#!/bin/bash

# set -x
# 测试,配置文件,是否有问题
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    sudo nginx -t

}


fun "$@"

