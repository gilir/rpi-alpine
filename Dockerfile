FROM armhf/alpine:3.5

ENV QEMU_VERSION 2.6.0

LABEL maintainer="Julien Lavergne <julien@lavergne.online>" alpine_version="3.5" qemu_version="${QEMU_VERSION}"

WORKDIR /tmp

RUN apk upgrade --no-cache && \
    apk add --no-cache wget ca-certificates

RUN wget https://github.com/multiarch/qemu-user-static/releases/download/v$QEMU_VERSION/qemu-arm-static.tar.gz && \
    tar xzf qemu-arm-static.tar.gz && \
    cp qemu-arm-static /usr/bin/qemu-arm-static && \
    rm qemu-arm-static.tar.gz
