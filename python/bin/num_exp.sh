#!/bin/bash

# set -x
# 自然,指数
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local num=$1


    local s1="import numpy as np; ret=np.exp($num); print(ret)"

    python3 -c "$s1"
}


fun "$@"

