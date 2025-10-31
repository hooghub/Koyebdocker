#!/bin/sh
# entrypoint.sh

echo "Starting V2Ray service..."
/usr/bin/v2ray run -config /etc/v2ray/config.json
