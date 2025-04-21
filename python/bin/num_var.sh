#!/bin/bash

# set -x
# 方差
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local num=$1

    # 拼接成数组
    local str1="["
    for val in "$@";do
        str1+=$val" ,";
    done

    str1=${str1:0:-1}
    str1+="]";

    # echo $str1;
    local s1="import numpy as np; ret=np.var($str1); print(ret)"

    python3 -c "$s1"
}


fun "$@"

