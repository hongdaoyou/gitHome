#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local num=$1


    local s1="import numpy as np; ret=np.log($num); print(ret)"

    python3 -c "$s1"
}


fun "$@"

