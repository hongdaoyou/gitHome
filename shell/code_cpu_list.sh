#!/bin/bash

# set -x
# 列出,cpu,占用,最多的 vscode 插件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    code --status | grep -i "extensions"

}


fun "$@"

