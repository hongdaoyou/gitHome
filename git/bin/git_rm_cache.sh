#!/bin/bash

# set -x
# 删除,提交到,暂存库的文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local fileName="$@"

    git rm --cache $fileName
}


fun "$@"

