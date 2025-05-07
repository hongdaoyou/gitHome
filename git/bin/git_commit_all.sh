#!/bin/bash

# set -x
# 一次性提交, 不需要,git add
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local msg="$1"

    # set -x
    git commit -a -m "$msg"

}


fun "$@"

