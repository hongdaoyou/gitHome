#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local url=$1
    local file=$2

    # 输出文件
    local output;
    if [ -n "$file" ];then
        output=" -O $file ";
    fi
    
    wget --no-check-certificate $url $output 

}


fun "$@"

