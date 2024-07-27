#!/bin/bash

# 用一个文件,替换,多个已知的文件
function cp_replace_file() {

    if [ $# -eq 0 ];then
        echo "请输入参数"; exit 1;
    fi
    local srcFile=$1;

    if [ ! -e ${srcFile} ]; then
        echo "待拷贝的文件,不存在"; exit 1;
    fi

    # 待覆盖的的文件
    fileArr=$(cat);
    if [ -z "$fileArr" ];then
        echo "未输入,待拷贝的文件"; exit 1;
    fi
    
    # 将 \n, 转换成 空格
    fileArr=$(echo $fileArr | tr -t "\n" " ")

    local i=0;
    # 遍历文件
    local file;
    for file in ${fileArr[@]}; do
        # echo $file;
        # 文件存在,才覆盖
        if [ -e $file ]; then
            cp $srcFile $file;
            let i=i+1;
            # echo 111;
        else
            echo "$file 不存在" 
        fi
    done
    echo "已拷贝 $i 个文件";
}

cp_replace_file $1

