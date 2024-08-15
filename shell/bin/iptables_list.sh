#!/bin/bash

# set -x
# 查看,iptables的防火墙规则
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    # 默认的表
    local table=${1:-filter} # 表名
    local link=$2

    # echo $table
        # sudo iptables -L INPUT -t filter
    sudo iptables -L ${link} -t ${table}

}


fun "$@"

