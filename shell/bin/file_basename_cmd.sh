#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local dir=$1

    # 目录
    local dirName=$(dirname $dir)
    
    # 文件
    local baseName=$(basename $dir)

    # 文件名
    local baseName2=${baseName%.*}
    # 扩展名
    local extension=${baseName##*.}

    echo $dirName;
    echo $baseName;
    echo $baseName2;
    echo $extension;

}


fun "$@"

