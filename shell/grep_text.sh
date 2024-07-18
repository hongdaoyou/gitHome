#!/bin/bash

# set -x

# 搜索,某个内容. 并且,排除一些目录
function grep_text() {
    noMatchDir=(
        # "awk"
        "node_modules"
        "dist"
        ".git"
        ".svn"
        ".history"
        "vendor"
        "pkg"
        "site-packages"

        "pma"
        "wordpress"
    )

    local excludeStr;
    for file in ${noMatchDir[@]};do
        excludeStr+=" --exclude-dir $file ";
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

    grep  -I -r ${excludeStr} "$textStr" ${dirName}

    # local str=$(grep -r ${excludeStr} "$textStr" ${dirName} )
    # echo  $str; 
    # echo -e $str > ~/1
    # cat ~/1
}

grep_text $1 $2

