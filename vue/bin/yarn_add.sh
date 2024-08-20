#!/bin/bash

# set -x
# 加入插件
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1
    local globalFlag=$2

    # 是否,全局安装
    if [ -n "$globalFlag" ];then
        globalFlag=" global "
    fi

    # yarn add ant-design-vue
    yarn add $globalFlag $soft 

}


fun "$@"

