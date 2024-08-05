#!/bin/bash

# 根据,特殊的文件名,进行删除
function rm_file_by_special() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi

    local fileName=$1
    local fileArr=$(find . -name "*$fileName*" )

    local confirm=$2;
    if [ -n "$confirm" ] && [ "$confirm" -eq 1 ]; then
        echo "删除操作"
        rm -rf $fileArr
    else
        echo "已列出";
    fi
    echo $fileArr;
}


rm_file_by_special $1 $2
