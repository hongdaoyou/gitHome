#!/bin/bash

# 将gitHome的路径,放入 PATH
# sudo ./init.sh
function fun() {
    # echo $PWD
    local gitHome=${PWD%/*}
    # echo $gitHome;
    local s1="""
# gitHome,路径  # 如果,在 my-etc-profile 设置了,就不用加了
export gitHome=$gitHome

# 将shell路径,加载进去
source ${gitHome}/shell/load_shell_bin_path.sh

"""
    echo "$s1"
    cat /etc/profile | grep "export gitHome" ;
    if [ $? -ne 0 ];then
        sudo echo "$s1" >> /etc/profile
        if [ $? -eq 0 ];then
            echo "将gitHome 配置,导入,profile 文件了"
        fi
    else
        echo "已经存在, gitHome, 无序,再导入了";
    fi

}

fun
