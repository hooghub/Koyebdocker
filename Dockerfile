# 使用官方 V2ray 镜像
FROM v2fly/v2fly-core:latest

# 拷贝配置文件
COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 设置入口脚本
ENTRYPOINT ["/entrypoint.sh"]
