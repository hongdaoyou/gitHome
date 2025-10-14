#!/bin/bash

# set -x
# 将大于,或等于3个换行符,转换成, 2个换行符
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file=$1

    if [ ! -f "$file" ];then
        echo "文件,不存在"; exit 1;
    fi

    # 这种,写法,没用
    # sed -i -z 's/\n\n\+/\n\n/g' $file
    
    tmpName=$(mktemp)
    # 用 perl 替换，效率高，兼容性好
    perl -0777 -pe 's/\n{3,}/\n\n/g' "$file" > "$tmpName" && mv "$tmpName" "$file"
}


fun "$@"

