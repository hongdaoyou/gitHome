#!/bin/bash

# 开启,服务
function start_service_real() {
	while true ; do
        echo '111';

        sleep 1
	done
}

# 删除,服务
function stop_service_real() {
	killall -9 "start_service"
    
    # ps -ef | grep "start_service"  | grep -v "grep" | grep -v "start_service.sh start" | awk '{print $2}' | xargs -r  kill -9
}

# 接口
function start_service() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi
    option=$1

    case $option in
        'start')
            echo 'start'
            stop_service_real
            start_service_real
        ;;
        'stop')
            echo 'stop'
            stop_service_real
        ;;
        'reload')
            echo 'reload';
            stop_service_real
            start_service_real
        ;;
        *)
            echo '输入的参数错误'
        ;;
    esac

}

start_service $1

