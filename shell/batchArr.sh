#!/bin/bash

# 给没有备份的软件,创建,同步的链接

# 定义,文件数组
arr=(
    ~/a
    ~/b
)

# 保存的目录
dstDir=~/data/note/soft-备份/

# 遍历,文件数组
for file in ${arr[@]}; do
    # 获取,文件名
    file1=${file##*/}
    # file=`basename $file`

    # 存储的文件
    dstFile=${dstDir}${file1}
    
    # 创建,硬链接
    ln ${file} ${dstFile}  2> /dev/null 

done 

