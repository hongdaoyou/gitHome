#!/bin/bash

# set -x
# 下载,php指定的库
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local soft=$1
    # composer require gokure/hyperf-cors
    composer require $soft

}


fun "$@"

