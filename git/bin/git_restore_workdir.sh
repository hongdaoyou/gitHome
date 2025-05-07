#!/bin/bash

# set -x
# 恢复,删除的文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=$1

    # 恢复到, 暂存区的 文件状态
    git restore   $file

    # git checkout -- $file

}


fun "$@"

