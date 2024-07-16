#!/bin/bash

# 运行,n个进程,跑满cpu
function loop_cpu() {

    num=$1
    if [ $# -eq 0 ];then
        echo "请输入参数"; exit 1;
    fi

    if [ $num -gt 6 ];then
        echo "最多6个"; exit 1;
    fi

    for (( i=0; i<$num; i++ )) {
        loop_cpu_real  &  
    }
    echo "运行成功";
}

function loop_cpu_real() {
    while [ true ];do
        ls &>/dev/null 
    done;
}

loop_cpu $1


