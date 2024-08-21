#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local num=${1:-10}

    ps aux | awk 'NR>1 {arr[$11]+=$6} END {for (i in arr) {print arr[i]/1024 " MB", i}}' | sort -nr | head -n $num

}


fun "$@"

