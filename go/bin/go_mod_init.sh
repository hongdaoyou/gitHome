#!/bin/bash

# set -x
# 创建,模块
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local mod=${1:-hdy}

    # go mod init d1

    go mod init $mod

}


fun "$@"

