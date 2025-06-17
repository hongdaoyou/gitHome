#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # 定义文件数组
    fileArr=(

    )

    # 定义要删除的字符串数组
    delArr=(

    )
    

    local file
    local pattern

    # 遍历所有文件
    for file in "${fileArr[@]}"; do
        if [[ ! -f "$file" ]]; then
            echo "Warning: File '$file' does not exist. Skipping..."
            continue
        fi

        # 构建 sed 删除模式（多个模式用 `\|` 分隔）
        local sed_pattern="/"
        for pattern in "${delArr[@]}"; do
            sed_pattern+="$pattern|"
        done
        sed_pattern="${sed_pattern%|}"  # 移除末尾多余的 `\|`
        sed_pattern+="/d"
        
        # set -x
        # 使用 sed 删除匹配的行（原地修改文件）
        sed -i -E "$sed_pattern" "$file"
        echo "$file 处理完成"
    done

}


fun "$@"

