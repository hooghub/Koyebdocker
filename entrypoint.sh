#!/bin/sh

# 如果没有 UUID，生成一个
if [ -z "$UUID" ]; then
  UUID=$(cat /proc/sys/kernel/random/uuid)
  echo "Generated UUID: $UUID"
fi

# 替换 config.json 中的占位符
sed -i "s/{{UUID}}/$UUID/g" /etc/v2ray/config.json

# 启动 V2Ray
exec v2ray -config /etc/v2ray/config.json
