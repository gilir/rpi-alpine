FROM armhf/alpine:3.5

ENV QEMU_VERSION 2.8.1

LABEL maintainer="Julien Lavergne <julien@lavergne.online>" alpine_version="3.5" qemu_version="${QEMU_VERSION}"

COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static
