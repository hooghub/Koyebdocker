# V2ray Node on Koyeb

## 使用方法

1. Fork 或 Clone 本仓库到 GitHub
2. 在 Koyeb 创建 Docker Web Service：
   - Repository: 你的 GitHub 仓库
   - Branch: main
   - Run Command: leave empty（Dockerfile 已配置入口）
   - Proxy TCP：映射容器端口 443
3. 部署完成后，获取公网地址（如 xxxx.koyeb.app）和 Koyeb 分配的 Proxy TCP 端口
4. VLESS 链接示例：

vless://UUID@xxxx.koyeb.app:PORT?encryption=none&security=tls&type=tcp#KoyebNode

5. 可以直接导入 V2rayN 使用
