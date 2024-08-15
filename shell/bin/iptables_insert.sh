#!/bin/bash

# 检查,是否端口,ip, 协议
# function checkRe() {
#     local s1=$1
#     local option;

#     if [ $s1 =~ ^\d+$ ];then
#         # 端口号
#         option="-P";
#     elif [ $s1 =~ ^\w+$ ]; then
#         option="-p";
#     else
#         option="-s";
#     fi
#     return option
# }

# set -x
# 
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    # 链名
    # local link=$1
    
    # 匹配的项
    local option="$@"
    # 
    set -x
    sudo iptables -I  $option
    if [ $? -eq 0 ];then
        echo "添加成功";
    else
        echo "添加失败";
    fi

}


fun "$@"

