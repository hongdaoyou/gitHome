#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1
    
    # go  get  -u  github.com/panjf2000/gnet/v2
    go get -u $soft
}


fun "$@"

