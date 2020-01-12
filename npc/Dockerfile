FROM alpine
MAINTAINER himanzero <noemail@gmail.com>

WORKDIR /
ENV NPC_VERSION 0.26.0
ENV NPC_RELEASE_URL https://github.com/cnlh/nps/releases/download/v${NPC_VERSION}/linux_amd64_client.tar.gz

RUN set -x && \
#        mkdir -p /nps && \
#        cd /nps && \
        wget --no-check-certificate ${NPC_RELEASE_URL} && \
        tar xzf linux_amd64_client.tar.gz && \
        mv conf conf.d && \
        mkdir conf && \
        rm linux_amd64_client.tar.gz

VOLUME /conf

ENTRYPOINT [ "/npc" ]
