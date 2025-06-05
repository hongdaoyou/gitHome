#!/bin/bash

# set -x
# 
function fun() {

# 使用七牛云代理, 快点
go env -w GOPROXY=https://goproxy.cn,direct


# 使用阿里云代理（推荐国内） 有点慢
# go env -w GOPROXY=https://mirrors.aliyun.com/goproxy/,direct


# # 禁用代理（直接连接）
# go env -w GOPROXY=direct

}


fun "$@"

