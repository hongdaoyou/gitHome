#!/bin/bash

# 产生,某个区间的随机值
function fun() {
    if [ $# -ne 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local n=$1;
    local m=$2;

    local rand=$RANDOM;
    
    # echo $rand;
    echo "$rand % ($m-$n+1) + $n" | bc

}

fun $1 $2

