#!/bin/bash

# set -x
# 查看,某个进程的,读写速度
function fun() {
    if [ $# -eq 0 ];then
        sudo iotop
        exit 0
    fi
    local soft=$1
    pidArr=$(pgrep -i -d ' ' $soft)

    local opt;
    for val in ${pidArr[@]}; do
        echo $val
        opt+=" -p "$val
    done
    # echo $opt
    sudo iotop $opt

    exit 0;


    # 以下的操作,没啥用了
    local name=$1
    local confirm=$2

    local ret=$(ps -ef | grep "$name" | grep -v  -E "iotop|grep") 
    echo "$ret"

    if [[ -n "$ret" &&  -n "$confirm" ]];then
        # echo '11';
        pid=$(echo "$ret" | awk 'NR==1{print $2}')
        # echo $pid

        sudo iotop -p $pid
    fi

	# sudo iotop -p 210159

}


fun "$@"

