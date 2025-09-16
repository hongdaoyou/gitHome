#!/bin/bash

# set -x
# 监听,某个文件,是否修改
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi


}


fun "$@"

