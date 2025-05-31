#!/bin/bash

# set -x
# 根据,文件数组,搜索,具体的内容
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    file=$1
    
    grep '^###### --' $file
}


fun "$@"

