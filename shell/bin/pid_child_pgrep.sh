#!/bin/bash


# 查找,它的子进程
function pgrep_child() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi
    let firstPid=$1;
    # ppid=$(ps -o pid -ppid $pid)

    pgrep -P $firstPid  | xargs -r ps -p
}

pgrep_child $1

