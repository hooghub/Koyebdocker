FROM v2fly/v2fly-core:latest

COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 与 Koyeb TCP Proxy 内部端口对应
EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
