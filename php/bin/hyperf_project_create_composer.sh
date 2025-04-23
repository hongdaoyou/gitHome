#!/bin/bash

# set -x
# 启动 hyperf
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local name=${1:-hyperf1}

    composer create-project hyperf/hyperf-skeleton $name --no-interaction

}


fun "$@"

