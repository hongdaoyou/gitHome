#!/bin/bash

# 通过 find_file.sh, 找出,合适的文件, 然后, 统一拷贝

# 拷贝文件
function copy_file_arr() {
    
    if [ $# -eq 0 ];then
        echo "请指定,要存储的目录"; exit 1;
    fi
    # 待存储的目录
    dstDir=$1
    
    if [ ! -d $dstDir ]; then
        echo "目录,不存在"; exit 1;
    fi
    
    # 待拷贝的 文件数组
    # local fileArr=(
    # )

    # 待拷贝的文件
    fileArr=$(cat);
    if [ -z "$fileArr" ];then
        echo "未输入,待拷贝的文件"; exit 1;
    fi
    
    # 将 \n, 转换成 空格
    fileArr=$(echo $fileArr | tr -t "\n" " ")


    local fileName;
    local i;
    # 遍历,数组,拷贝文件
    for fileName in ${fileArr[@]};do
        # echo $fileName;

        # 如果是文件,才拷贝
        if [ -f "$fileName" ];then
            cp "$fileName" $dstDir;
            let i++;
        fi
    done

    echo "已拷贝 ${i} 文件";
}


copy_file_arr $1

