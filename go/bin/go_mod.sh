#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local mod=$1

    # go mod init d1

    go mod init $mod


}


fun "$@"

