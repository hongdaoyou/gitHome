#!/bin/bash
source common.sh

# set -x

# 搜索,某个内容. 并且,排除一些目录
function grep_text() {
    # 不用匹配的
    local noMatchDir=("${noMatchDir[@]}")

    # echo ${#noMatchDir}

    local excludeStr;
    for file in ${noMatchDir[@]};do
        excludeStr+=" --exclude-dir $file ";
        # echo $file
    done

    if [ $# -lt 2 ];then
        echo "参数,不够"; exit 1;
    fi

    # 先内容, 后文件名
    textStr=$1
    dirName=$2

    # echo $excludeStr;
    # echo $dirName;
    # echo $textStr;

    # set -x
    grep  -I -r ${excludeStr} -- "$textStr" ${dirName}
    # set +x

    # local str=$(grep -r ${excludeStr} "$textStr" ${dirName} )
    # echo  $str; 
    # echo -e $str > ~/1
    # cat ~/1
}

grep_text "$1" "$2"

