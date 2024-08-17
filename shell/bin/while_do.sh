#!/bin/bash

# set -x
# 执行,某个命令,n次,或者,永久执行
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local cmd=$1
    local num=$2

    if [ -n "$num" ];then
        while [ $num -ne 0 ];do
            $cmd
            let num=num-1
        done
    else
        while true;do
            $cmd
        done
    fi

}


fun "$@"

