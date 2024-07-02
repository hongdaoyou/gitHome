#!/bin/bash

if [ $# -eq 0 ];then
    filePath=~/note/0-wen/0-tmp/tmp3 # 使用默认路径
else
    filePath=${1}
fi

# 将英文句子,的格式化
function format_english_sentence() {
    # 添加 1 
    # sed -i "s/\n([\u4e00-\u9fa5])/\n1 $1/g" ${filePath}

    # 添加 我的
    # sed -i "s/\n(    )/\n    我的\n   $1/m" ${filePath}
    # sed -i "s/\n(    )/\n    我的\n   $1/" ${filePath}
    # sed -i "s/\n/\n\n\n/" ${filePath}

    sed -i "s/\n/\n\n\n/" ~/data/note/0-wen/0-tmp/tmp3
}

format_english_sentence

