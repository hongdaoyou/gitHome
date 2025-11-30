#!/bin/bash

# set -x
# 根据,docker-compose.yml  估计下载 的大小. 但是,失败
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=

    compose_file=${1:-~/test/docker/docker-compose.yml}

    if [ ! -f "$compose_file" ]; then
    echo "❌ 未找到 $compose_file，请确保路径正确。"
    exit 1
    fi

    echo "🔍 正在解析镜像列表..."
    images=$(grep -E 'image:' "$compose_file" | awk '{print $2}' | sort -u)

    if [ -z "$images" ]; then
    echo "⚠️ 未在 $compose_file 中找到任何 image 定义。"
    exit 0
    fi

    total=0

    echo "---------------------------------------------"
    printf "%-45s %10s\n" "镜像名称" "大小(MB)"
    echo "---------------------------------------------"

    for img in $images; do
    # 获取镜像 manifest JSON
    manifest=$(docker manifest inspect "$img" 2>/dev/null || true)

    if [ -z "$manifest" ]; then
        echo "⚠️ 无法获取 $img 的 manifest（可能镜像不存在或未登录仓库）"
        continue
    fi

    # 提取各层大小并求和
    size_bytes=$(echo "$manifest" | grep '"size"' | awk '{print $2}' | tr -d ',' | paste -sd+ - | bc)
    size_mb=$((size_bytes / 1024 / 1024))
    total=$((total + size_mb))

    printf "%-45s %10d\n" "$img" "$size_mb"
    done

    echo "---------------------------------------------"
    echo "📦 总计预计下载大小: ${total} MB"
    echo "---------------------------------------------"


}

fun "$@"

