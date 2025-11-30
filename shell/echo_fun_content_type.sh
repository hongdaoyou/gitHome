#!/bin/bash

# set -x
# 查看,某个函数的 内容
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local s=$1
    # echo $s
    # type echo_bin_name_type.sh
    
    # 交互式的执行, 可以,获取, bashrc的内容. 没有export
    bash -i -c "type $s"
}


fun "$@"

