#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    source $gitHome/shell/common.sh;

    for key in ${!demoFileArr[@]}; do
        # echo $key
        # echo ${demoFileArr[$key]}/bin/*.sh

        for file in  ${demoFileArr[$key]}/bin/*\.sh; do
            # echo $file
            echo '' > /dev/null
            # chmod +x $file
        done
        
        shopt -s nullglob  # 如果没有匹配的文件，返回空列表而不是原始模式
        for file in ${demoFileArr[$key]}/*\.sh; do
            echo $file
            # chmod +x $file
        done
        shopt -u nullglob  # 关闭 nullglob（可选）



    done

}


fun "$@"

