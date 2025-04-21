#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local num=$1
    local num2=$2


    local s1="import numpy as np; ret=np.power($num, $num2); print(ret)"

    python3 -c "$s1"
}


fun "$@"

