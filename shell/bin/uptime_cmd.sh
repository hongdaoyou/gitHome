#!/bin/bash

# set -x
# 查看, 系统运行的时间
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    uptime

}


fun "$@"

