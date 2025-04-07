#!/bin/bash

# set -x
# 通过,进程名, 动态查看,具体的cpu,内存
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local name=$1
    
    # 进程id
    local pid=$(pgrep -d ',' $name)
    if [ -z "$pid" ];then
        echo "未找到,该进程名";  exit 1;
    fi
    # echo $pid
    # exit;

    # 查看
    top -p "$pid"

    # top -p $(pgrep -d ',' chrome)

}


fun "$@"

