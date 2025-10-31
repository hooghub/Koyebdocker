# 基础镜像：使用官方 V2Ray 核心
FROM v2fly/v2fly-core:latest

# 复制配置文件和启动脚本
COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /entrypoint.sh

# 赋予启动脚本执行权限
RUN chmod +x /entrypoint.sh

# Koyeb TCP Proxy 内部端口（必须与 service.json 中一致）
EXPOSE 8000

# 启动入口
ENTRYPOINT ["/entrypoint.sh"]
