#!/bin/bash

# set -x
# 查看,某次提交的文件
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,文件名"; exit 1;
    fi
    local file=$1
    local version=${2:-1}
    echo $version

    set -x
    git show @~$version:$file

    # git show @~2:疑问3
}


fun "$@"

