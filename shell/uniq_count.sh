#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s1=$(cat)

    echo "$s1" | sort | uniq -c | sort  -rn | column -t

}


fun "$@"

