#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # 定义文件数组
    local fileArr=(
        
    )

    # 定义要删除的字符串数组
    local -A replaceArr=(
        # ["^V_(.*?)\["]="V_a["
        # ["^    V_(.*?) -->"]="    V_a -->"
    )
    
    local file
    local pattern

    # 替换
    local sed_pattern=""
    for key in "${!replaceArr[@]}"; do
        local val=${replaceArr[$key]}

        # echo $key
        # echo $val;
        sed_pattern+="s/$key/$val/g;";
    done
    # echo $sed_pattern;
    # 遍历所有文件
    for file in "${fileArr[@]}"; do
        if [[ ! -f "$file" ]]; then
            echo "Warning: File '$file' does not exist. Skipping..."
            continue
        fi
        
        # set -x
        # 使用 sed 删除匹配的行（原地修改文件）
        sed -i -E "$sed_pattern" "$file"
        echo "$file 处理完成"
    done

}


fun "$@"
