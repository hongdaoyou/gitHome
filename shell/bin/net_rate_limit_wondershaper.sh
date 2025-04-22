#!/bin/bash

# set -x
# 网速的限制, 为了避免,影响,其他的用户
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1

    if [ $# -eq 0 ]; then
        # 上传下载,限制 5M
        sudo wondershaper -a wlp3s0 -d 40000 -u 40000
        echo "网速,限速,设置 为 5M"
    
    else
        # 清除设置
        sudo wondershaper -a wlp3s0 -c
        echo "网速,限速,清除"
    fi


}


fun "$@"

