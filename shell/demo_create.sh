#!/bin/bash

# 用法
#    demo_create.sh php

# 创建 demo,文件
function demo_create() {
    if [ $# -eq 0 ] ; then 
        echo "请输入,要创建的文件类型";exit 1;
    fi

    fileName=${1}

    # echo $fileName;
    extensionName=${fileName##*.}

    # 模板,锁在的目录
    dirName=${gitHome}
    
    # 默认的名字
    defalutFileName="a-demo."${extensionName}
    
    # 默认文件的位置
    declare -A mapArr;
    mapArr=(
        [php]=${dirName}/php/${defalutFileName}
        [c]=${dirName}/c/${defalutFileName}
        [cpp]=${dirName}/cpp/${defalutFileName}
        [js]=${dirName}/js/${defalutFileName}

        [vue]=${dirName}/vue/vite1/src/components/A-demo.vue
    )
    # echo ${mapArr[$extensionName]} ;

    # if [ ${mapArr[$extensionName]} = '' ];then
    if [ -z ${mapArr[$extensionName]} ];then
        echo "没有这个类型的模板文件"; exit 1;
    fi

    # 拷贝
    cp ${mapArr[$extensionName]} $fileName;
    if [ $? -eq 0 ];then
        echo "拷贝成功";
    else
        echo "拷贝失败";
    fi
}

demo_create  ${1}
