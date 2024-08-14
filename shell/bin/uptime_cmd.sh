#!/bin/bash

# set -x
# 查看,cpu的负载
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local cpuNum=$(lscpu | grep CPU: | awk '{print $2}')
    local up1=$(uptime | awk -F',' '{print $4}' | awk '{print $3}')

    echo "cpuNum:"$cpuNum
    echo "up1:"$up1

    # local maxNum=$(echo "$cpuNum * 0.7 > $up1 " | bc)
    local ret=$(echo "$cpuNum * 0.7 > $up1 " | bc)

    if [ $ret -eq 1 ];then
        echo "cpu,还充足";
    else
        echo "cpu,运行太多了";

    fi

}


fun "$@"

