#!/bin/bash

# 产生,大文件
function dd_file() {
    
    if [ $# -lt 2 ];then
        echo "参数,不足"; exit 1;
    fi

    outFileName=$1
    fileSize=$2

    if [ -e $outFileName ]; then
        echo "输出文件,已存在,请先删除"; exit 1;
    fi

    if [ $fileSize -gt 0 -a  $fileSize -le 300  ];then
        echo "" > /dev/null;
    else
        echo "文件,不能过大"; exit 1;
    fi


    dd if=/dev/urandom bs=1M count=${fileSize} of=${outFileName}

    echo "创建成功"
    # echo $a1;
}


dd_file $1 $2


