#!/bin/bash

# set -x
# 用 sudo ,执行命令
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local cmd="$@"

    # set -x
    sudo bash -c "$cmd"
}


fun "$@"

