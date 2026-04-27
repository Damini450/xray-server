FROM ubuntu:22.04
RUN apt update && apt install -y curl unzip
RUN curl -Lo xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip
RUN unzip xray.zip && chmod +x xray
COPY config.json /etc/xray/config.json
EXPOSE 443
CMD ["./xray", "run", "-c", "/etc/xray/config.json"]
