#!/bin/bash

# set -x
# 修改备注
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # 回退提交的, 恢复
    # 操作的是, head指针. 
    # 暂存区的文件,要修改. 清空
    git reset @@{1}

}


fun "$@"

