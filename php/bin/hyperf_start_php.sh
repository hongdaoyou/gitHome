#!/bin/bash

# set -x
# 启动 hyperf
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local flag=$1
    
    	php bin/hyperf.php server:watch
    
    # if [ -n "$flag" ];then
    # 	php bin/hyperf.php server:watch

    # else
    #     php bin/hyperf.php start
    # fi

}


fun "$@"

