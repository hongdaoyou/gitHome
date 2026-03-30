#!/bin/bash

# set -x
# 将unicode ,转换成,汉字
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local txt=$1

    # unicode_decode.sh "hdy-\u6a21\u578b2"

    printf "$txt\n"

}


fun "$@"

