#!/bin/bash
# set -x
source common.sh

# 排除,某些目录,查找,某些文件
function find_file() {
    local excludeDir=${excludeDir}
    # local excludeDir=("${excludeDir[@]}")

    if [ $# -lt 2 ];then
        echo "参数不够"; exit;
    fi

    # 待查找的目录
    findDir=${1}

    # 文件名
    fileName=${2}

    excludeStr=" \( "
    len=${#excludeDir[@]};
    echo $len;

    # 最后,一个下标
    let lastIndex=${len}-1

    # for file in ${excludeDir[@]};do
    for (( i=0; i<${len}; i++ ));do
        # excludeStr=${excludeStr}" -path "${excludeDir[i]}" -prune"
        # excludeStr="${excludeStr} -path ${excludeDir[i]} -prune"
        excludeStr+=" -path ${excludeDir[$i]} "

        # 最后一个下标
        if [ $i -eq $lastIndex ];then
            excludeStr+=" \) -prune -o ";
        else
            excludeStr+=" -o ";
            # excludeStr=${excludeStr}" -path "${excludeStr}" -prune -a ";
        fi
    done
    # echo $excludeStr;
    # set -x
    cmd="find $findDir ${excludeStr} -iname \*${fileName}\* "
    # echo $cmd;

    eval $cmd
}


find_file $1 $2

