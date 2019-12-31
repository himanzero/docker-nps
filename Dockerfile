FROM alpine
MAINTAINER himanzero <noman@gmail.com>

WORKDIR /
ENV NPS_VERSION 0.25.4
ENV NPS_RELEASE_URL https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz

RUN set -x && \
        mkdir -p /nps && \
        cd /nps && \
        wget --no-check-certificate ${NPS_RELEASE_URL} && \
        tar xzf linux_amd64_server.tar.gz && \
        mv conf conf.d && \
        mkdir conf && \
    rm linux_amd64_server.tar.gz

VOLUME /nps/conf

CMD /nps/nps
