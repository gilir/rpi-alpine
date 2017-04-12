FROM armhf/alpine:3.5

ENV QEMU_VERSION 2.6.0

LABEL maintainer="Julien Lavergne <julien@lavergne.online>" alpine_version="3.5" qemu_version="${QEMU_VERSION}"

WORKDIR /tmp

ADD https://github.com/multiarch/qemu-user-static/releases/download/v$QEMU_VERSION/qemu-arm-static.tar.gz /tmp

RUN tar xzf /tmp/qemu-arm-static.tar.gz && cp qemu-arm-static /usr/bin/qemu-arm-static
