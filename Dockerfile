#alpine:3.10
FROM frolvlad/alpine-glibc:alpine-3.8_glibc-2.28
MAINTAINER https://github.com/wujun8/docker-tool

USER root

ADD *.sh /
RUN sh /build.sh

COPY /ws/ /usr/bin/
ADD res/dot/. /root/
