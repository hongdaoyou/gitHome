#!/bin/bash

# set -x
# 删除,防火墙的规则
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local table=${1}
    local link=${2}

    local num=${3:-all}
    echo $num

    if [[ $num =~ ^[0-9]+$ ]];then
        # echo '11'
        # 清除,某条
        # iptables -D INPUT 4
        set -x
        sudo iptables -t $table -D $link $num
    else
        # 清除,某个链
        # iptables -F -t filter
        # set -x
        sudo iptables -t $table -F $link
        # echo $?
    fi
    if [ $? -eq 0 ];then
        echo "执行成功"
    else
        echo "执行失败"
    fi

}


fun "$@"

