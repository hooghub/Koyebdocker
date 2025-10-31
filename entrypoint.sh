#!/bin/sh

if [ -z "$UUID" ]; then
  UUID=$(cat /proc/sys/kernel/random/uuid)
  echo "Generated UUID: $UUID"
fi

sed -i "s/{{UUID}}/$UUID/g" /etc/v2ray/config.json

exec v2ray -config /etc/v2ray/config.json
