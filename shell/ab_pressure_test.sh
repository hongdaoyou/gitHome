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
    local totalNum=${2:-1000}
    
    # 并发数
    local conn=${3:-50}

    # set -x
    ab -n $totalNum -c $conn $url
    # ab -n 1000 -c 50 url
}


fun "$@"

