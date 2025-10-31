#!/bin/bash

# 自动生成随机 UUID，如果环境变量没有指定
UUID=${UUID:-$(cat /proc/sys/kernel/random/uuid)}

# 替换 config.json 中的 UUID
sed -i "s|{{UUID}}|$UUID|g" /etc/v2ray/config.json

# 启动 V2ray
v2ray -config /etc/v2ray/config.json
