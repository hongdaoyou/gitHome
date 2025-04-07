#!/bin/bash

# 用法
#    demo_create.sh php

source common.sh
# 创建 demo,文件
function demo_create() {
    if [ $# -eq 0 ] ; then 
        echo "请输入,要创建的文件类型";exit 1;
    fi

    fileName=${1}
    if [ -e $fileName ];then
        echo "该文件,已存在.请先手动删除.";exit 1;
    fi

    # echo $fileName;
    extensionName=${fileName##*.}

    # echo ${demoFileArr[$extensionName]} ;

    local srcFile;
    
    # echo $fileName;
    # echo ${demoFileArr[sh]};

    # 先检查,特殊文件. 再检查,后缀名
    if [ -n "${demoFileArr[$fileName]}" ];then
        srcFile="${demoFileArr[$fileName]}/${fileName}"

    elif [ -n "${demoFileArr[$extensionName]}" ];then
        # 默认的名字
        defalutFileName="a-demo."${extensionName}
        
        srcFile=${demoFileArr[$extensionName]}/$defalutFileName
    else
        echo "没有这个类型的模板文件"; exit 1;
    fi

    # 拷贝
    cp -- $srcFile $fileName;
    if [ $? -eq 0 ];then
        echo "拷贝成功";
    else
        echo "拷贝失败";
    fi
}

demo_create  ${1}
