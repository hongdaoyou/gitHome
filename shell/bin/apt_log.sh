#!/bin/bash

# set -x
# 查看,下载的日志
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    tail -n 200 -f /var/log/apt/history.log | grep Commandline


}


fun "$@"

