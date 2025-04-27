#!/bin/bash

# set -x
# 

# 检查, 管道输入,是否,为空
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    if [ -t 0 ] || [ -z "$(cat -)" ];then
        echo '111';
    else
        echo '222';

    fi

}


fun "$@"

