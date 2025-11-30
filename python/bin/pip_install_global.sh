#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft="$*"

    # sudo pip install $soft --break-system-packages -i https://mirrors.aliyun.com/pypi/simple 
    
    sudo pip install $soft --break-system-packages -i https://pypi.tuna.tsinghua.edu.cn/simple 
    
    # https://mirrors.cloud.tencent.com/pypi/simple

    # https://mirrors.huaweicloud.com/repository/pypi/simple

    # sudo pip install $soft --break-system-packages -i https://mirrors.aliyun.com/pypi/simple  --ignore-installed
}


fun "$@"

