#!/bin/bash
# 文件名： tables_have_data.sh

# 数据库连接配置
DB_HOST="localhost"
DB_USER="root"
DB_PASS="123456"

# 检查参数
# if [ $# -lt 1 ]; then
#     echo "用法: $0 <数据库名> [排除模式1] [排除模式2] ..."
#     echo "示例: $0 mydatabase _bak _temp test_"
#     exit 1
# fi

DB_NAME="$1"
shift
EXCLUDE_PATTERNS=("$@")

DB_NAME=magicpublic
EXCLUDE_PATTERNS=("ACT_" "auth_" "django_" "djcelery_")

echo "搜索数据库: $DB_NAME"
echo "排除模式: ${EXCLUDE_PATTERNS[@]}"
echo ""

# 查询所有表
TABLES_QUERY="SHOW TABLES IN \`$DB_NAME\`;"
TABLES=$(mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" -N -B -e "$TABLES_QUERY" 2>/dev/null)

if [ -z "$TABLES" ]; then
    echo "错误: 无法获取表列表或数据库为空"
    exit 1
fi

echo "有数据的表列表:"
echo "---------------"

RESULT_COUNT=0
for TABLE in $TABLES; do
    # 检查是否应该排除
    SKIP=0
    for PATTERN in "${EXCLUDE_PATTERNS[@]}"; do
        if [[ "$TABLE" == *"$PATTERN"* ]]; then
            SKIP=1
            break
        fi
    done
    
    if [ $SKIP -eq 1 ]; then
        continue
    fi
    
    # 检查表是否有数据
    COUNT_QUERY="SELECT COUNT(*) FROM \`$DB_NAME\`.\`$TABLE\`;"
    COUNT=$(mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" -N -B -e "$COUNT_QUERY" 2>/dev/null)
    
    if [ "$COUNT" -gt 0 ]; then
        # 查询表注释
        COMMENT_QUERY="SELECT TABLE_COMMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA='$DB_NAME' AND TABLE_NAME='$TABLE';"
        COMMENT=$(mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" -N -B -e "$COMMENT_QUERY" 2>/dev/null)
        
        # 如果表注释为空，则显示"无注释"
        if [ -z "$COMMENT" ]; then
            COMMENT="无注释"
        fi
        
        echo "- $TABLE  $COMMENT (行数: $COUNT)"
        RESULT_COUNT=$((RESULT_COUNT + 1))
    fi
done

echo ""
echo "总计: 找到 $RESULT_COUNT 个有数据的表"