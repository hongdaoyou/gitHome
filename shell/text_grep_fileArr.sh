#!/bin/bash

# set -x
# 根据,文件数组,搜索,具体的内容
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local s1=${1} # 待搜索的 内容
    local fileArr=$(cat) # 文件路径

    # echo 'f1 f2' | xargs -r grep '链接文件的'

    echo "${fileArr[@]}" | xargs -r grep $s1
    # grep $s1 $fileArr

}


fun "$@"

