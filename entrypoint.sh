#!/bin/sh

# 生成 UUID
if [ -z "$UUID" ]; then
  UUID=$(cat /proc/sys/kernel/random/uuid)
  echo "Generated UUID: $UUID"
fi

# 替换 config.json 中的 {{UUID}}
sed -i "s/{{UUID}}/$UUID/g" /etc/v2ray/config.json

# 启动 V2Ray v5
exec v2ray run -c /etc/v2ray/config.json
