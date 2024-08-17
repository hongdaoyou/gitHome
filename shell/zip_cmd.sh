#!/bin/bash

# set -x
# 创建,zip压缩文件
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local zipFile=$1

    shift
    local file=$@

    # zip -r z.gz  z1 z2
    zip -r $zipFile $file
}


fun "$@"

