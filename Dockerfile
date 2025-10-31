FROM v2fly/v2fly-core:latest
COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8443
ENTRYPOINT ["/entrypoint.sh"]

