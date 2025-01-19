#!/bin/bash


# 查看,系统,是否被攻击
function see_attack() {
    # cpu
    echo "cpu, 内存,负载 : 空闲,看id "
    top -n1 |  sed -n "1,4p"

    # 解决光标,消失
    echo -e "\033[?25h"

    # 内存
    echo -e "\n内存:"
    free -h

    # 磁盘
    echo -e "\n磁盘的情况:"
    df -h | grep sda

    # 负载 ()
    # echo "运行的时间, 用户, 负载";
    # uptime

    # cpu的数量
    echo -e "\ncpu的个数"
    lscpu | grep "CPU:"

    # 当前用户
    echo -e "\n当前在线的,所有用户"
    who
    
    echo -e "\n当前的套接字情况: CLOSE-WAIT,fin包  SYN-RECV-syn同步包-查看是否被攻击了"
    ss -t | awk '!/State/{print $1}' | sort  | uniq -c

}

# 列出,日志文件的位置,大小
function list_log_file() {
logFileArr=(
    # Ubuntu的系统日志: 标准日志输出文件
    "/var/log/syslog"


    "/var/log/secure"
    "/var/log/auth"

    ~"/.bash_history"

    # 安全日志: 系统授权信息, 登录,和使用
    "/var/log/auth.log"

    # 启动时的日志
    "/var/log/boot.log"

    "/var/log/dpkg.log"

    # 记录,所有用户的最近信息 用lastlog命令,查看内容
    "/var/log/lastlog "

    # 内核日志
    "/var/log/kern.log "

    # 使用yum安装的软件包信息
    "/var/log/yum.log "

    # 包含验证和授权方面信息
    "/var/log/secure"


    # 包含登录信息
    "/var/log/wtmp"
    "/var/log/btmp"

    # 包含,用户登录失败信息
    "/var/log/faillog"

    # 服务器 nginx 
    "/var/log/nginx/access.log"
    "/var/log/nginx/error.log"

    # 数据库
    "/var/log/mysql/error.log"
    "/var/log/mongodb/mongod.log"
    "/var/log/mysql/query.log"
)
    echo -e "\n显示,具体的日志文件"
    
    for file in ${logFileArr[@]}; do
        ls -lh $file 2>/dev/null | awk '{print $5,$9 }'
        # du -sh $file 2>/dev/null
    done

}

see_attack

list_log_file
