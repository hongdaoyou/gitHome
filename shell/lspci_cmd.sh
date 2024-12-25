#!/bin/bash

# set -x
# 查看,显卡,或其它硬件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local name=${1:-VGA}
    
    lspci -k | grep -A 2 -i $name

}


fun "$@"

