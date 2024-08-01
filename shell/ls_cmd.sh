#!/bin/bash


function ls_cmd() {
    if [ $# -eq 0 ];then
        echo "请输入,要查找的文件名"; exit 1;
    fi

    # 待查找的文件名
    local fileStr=$1;

    # 文件目录
    local pathArr=(`echo $PATH | tr -t ':' ' '`)

    # 遍历
    local path;
    for path in ${pathArr[@]}; do
        # echo $path;
        # 一行行显示
        ls ${path}/*$fileStr* 2>/dev/null | xargs -n1 -r;

        # if [ $? -eq 0 ];then
        #     echo "";
        # fi
    done
}


ls_cmd $1


