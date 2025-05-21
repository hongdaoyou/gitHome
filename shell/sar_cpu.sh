#!/bin/bash

# set -x
# 查看,某一天, 每10分钟,cpu的情况
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local day=${1:-$(date +%d)}

    # echo $day;
    sar -u -f /var/log/sysstat/sa${day}

}


fun "$@"

