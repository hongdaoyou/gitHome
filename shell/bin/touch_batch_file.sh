#!/bin/bash

# set -x
# 批量创建,文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local dir=$noteDir'/0-wen/0-数字/UML/' 
    # return;
    local fileNameArr=(

-c-UML-try-.md
-cplus-cpp-UML-try-.md
-php-UML-try-.md
-java-UML-try-.md
-js-UML-try-.md
-html-UML-try-.md
-go-UML-try-.md
-python-UML-try-.md
-soft-UML-try-.md
-os-net-safe-UML-try-.md
-db-mysql-redis-UML-try-.md

    );

    # 文本的内容
    local content='';

    # if [ !-e $dir ];then
    #     echo "目录,不存在"; exit 1;
    # fi

    if [ ${#fileNameArr} -eq 0 ];then
        echo "文件,不存在"; exit 1;
    fi

    for fileName in ${fileNameArr[@]}; do
        # echo $fileName . '---';

        if [ "$content" != '' ];then
            # echo 'AAA';
            echo $content >> $dir/$fileName;
        else
            touch $dir/$fileName
        fi
    done


}


fun "$@"

