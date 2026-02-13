#!/bin/bash

# set -x
# 获取,设置,npm的配置 | 未测试
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    url=${1:-https://registry.npmmirror.com}
    npm config set registry $url 
        
        # 默认是 https://registry.npmjs.org/

}


fun "$@"

