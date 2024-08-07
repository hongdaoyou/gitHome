#!/bin/bash


function ssh_keygen_file() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    
    local fileName=$1
    local comment=$2

    if [ -f $fileName ]; then
        echo "该文件,已存在. 请亲自删除"; exit 1;
    fi

    ssh-keygen -t rsa -b 2048 -f $fileName -C $comment

}


ssh_keygen_file $1 $2

