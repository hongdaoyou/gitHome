
#!/bin/bash

# 查找,最繁忙的进程,正在做什么

function see_process_doing() {
    local pid;

    #没有输入内容
    if [ $# -eq 0 ];then
        pid=$(top -bn1 | sed -n '8p' | awk '{print $1}')
        if [ ${pid} -eq $$ ];then  # 不能相等
            echo "not find";
            exit
        fi

    else
        pid=${1}

        # 判断,字符串
        if [[ ! "${pid}" =~ ^[0-9]$ ]];then
            pid=$(ps -ef | grep "$pid" | grep -v "grep" | awk 'NR==1{print $2}')

            if [ -z $pid ];then
                echo "未找到,该名字的进程"; exit 1;
            fi
        fi
    fi

    sudo strace -p ${pid}

}

see_process_doing $1

