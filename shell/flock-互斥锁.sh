#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    {
        flock -x 100 # 获取,互斥锁
        echo '111';
        sleep 5; # 模拟,休眠
    } 100>/tmp/lock1  # 文件描述符 100,绑定到, 临时文件 

}


fun "$@"

