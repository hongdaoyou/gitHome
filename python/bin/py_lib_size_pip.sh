#!/bin/bash

# set -x
# 查看,当前安装的大小
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1
    
    # du -sh /home/hdy/.local/lib/python3.8/site-packages/langchain
    
    # du -sh /home/hdy/.local/lib/python3.8/site-packages/$soft
    du -sh /usr/lib/python3/dist-packages/$soft

}


fun "$@"

