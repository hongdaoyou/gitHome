#!/bin/bash

# set -x
# 查看,文件的大小
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=$1

    if [ ! -f $file ];then
        echo "文件不存在"; exit 1;
    fi

    du -sh $file
    echo $(du -sb $file | cut -f 1 )" 字节数"
    # echo $(du -sk $file | cut -f 1 )" KB"
    # echo $(du -sm $file | cut -f 1 )" MB"
    # echo $(du -sg $file | cut -f 1 )" GB"

}

fun "$@"

