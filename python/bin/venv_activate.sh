#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # local dir=$1

    # local confirm=$2

    # if [ -n "$confirm" ]; then
    #     confirm='';
    # else
    #     confirm='--no-site-packages';
    # fi
    

    # virtualenv $dir  $confirm

    # 需要 source . 单纯这样,不行
    ./venv/bin/activate
    # python3 -m venv $dir


}


fun "$@"

