#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # local cmd=$1
    local soft=$1

    # composer require gokure/hyperf-cors
    composer remove $soft

}


fun "$@"

