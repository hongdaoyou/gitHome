#!/bin/bash

# set -x
# 发送,请求,却失败了. nc_http.sh 成功了
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local ip=$1
    local port=$2
    local file=$3

    if [ -z "$file" ];then
        # telnet localhost 80
        telnet $ip $port
    else
        if [ ! -f "$file" ];then
            echo "文件不存在"; exit 1
        fi
        set -x
        cat $file | telnet $ip $port
    fi


}


fun "$@"

