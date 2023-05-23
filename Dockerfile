#alpine:3.10
FROM frolvlad/alpine-glibc:alpine-3.8_glibc-2.28
MAINTAINER https://github.com/wujun8/docker-tool

USER root

ADD *.sh /
ADD res/dot/. /root/
RUN sh /build.sh
RUN sh /build-bash.sh

