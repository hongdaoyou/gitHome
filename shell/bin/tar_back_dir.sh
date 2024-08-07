#!/bin/bash
set -x

# 备份,目录
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local tarName=$1

    local d1=$2

    tar czvf  $tarName $2 
}


fun $1 $2

