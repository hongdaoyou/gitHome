#!/bin/bash

# set -x
# 查看,某一天, 每10分钟,内存的情况
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local day=${1:-$(date +%d)}

    # echo $day;
    sar -r -f /var/log/sysstat/sa${day}

}


fun "$@"

