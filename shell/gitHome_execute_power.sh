#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    # 赋予 noteDir的 执行权限
    chmod +x $noteDir/0-wen/0-batch/shell/*.sh


    source $gitHome/shell/common.sh;

    for key in ${!demoFileArr[@]}; do
        # echo $key
        # echo ${demoFileArr[$key]}/bin/*.sh

        shopt -s nullglob
        for file in  ${demoFileArr[$key]}/bin/*\.sh; do
            # echo $file
            # echo '' > /dev/null
            chmod +x $file
        done
        shopt -u nullglob
        
        shopt -s nullglob  # 如果没有匹配的文件，返回空列表而不是原始模式
        for file in ${demoFileArr[$key]}/*\.sh; do
            # echo $file
            chmod +x $file
        done
        shopt -u nullglob  # 关闭 nullglob（可选）



    done

    
}


fun "$@"

