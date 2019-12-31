FROM alpine
MAINTAINER himanzero <noemail@gmail.com>

WORKDIR /
ENV NPS_VERSION 0.25.4
ENV NPS_RELEASE_URL https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz

# 根据项目文档，使用web模式时，服务端执行文件必须在项目根目录，否则无法正确加载配置文件。实际测试发现，如果不把项目解压到根目录，加载server.pem会出错！
RUN set -x && \
        wget --no-check-certificate ${NPS_RELEASE_URL} && \
        tar xzf linux_amd64_server.tar.gz && \
        mv conf conf.d && \
        mkdir conf && \
    rm linux_amd64_server.tar.gz

VOLUME /conf

CMD /nps
