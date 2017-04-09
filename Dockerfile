FROM armhf/alpine:3.5

WORKDIR /tmp

ADD https://github.com/multiarch/qemu-user-static/releases/download/v2.6.0/qemu-arm-static.tar.gz .

RUN tar xzf qemu-arm-static.tar.gz && cp qemu-arm-static /usr/bin/qemu-arm-static
