#!/bin/bash

# set -x
# 列出,文件的 全部路径
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local name=$1

    # 先,获取文件名
    if [ $# -eq 0 ]; then
        dir=$(ls)
    else
        dir=$(ls *$name*)
    fi
    
    # 再追加,路径
    for item in ${dir[@]}; do
        echo $PWD/${item}
    done

}


fun "$@"

