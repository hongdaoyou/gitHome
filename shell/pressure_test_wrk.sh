#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local url=$1

    # if [ -z $(expr index $url '/') ];then
    #     echo "请输入,网页的 具体地址"; exit 1;
    # fi

    # exit 1;

    # 总的请求数目
    local timeNum=${2:-10s}
    
    # 并发数
    local connNum=${3:-50}

    # set -x
    wrk -c $connNum -d $timeNum --latency $url


}


fun "$@"

