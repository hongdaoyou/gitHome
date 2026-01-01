#!/bin/bash

# set -x
# 测试,是否,ping通 服务器
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local server=${1:-all}
    
    ansible $server -m ping

}

fun "$@"

