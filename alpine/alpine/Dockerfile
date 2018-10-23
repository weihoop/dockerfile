# 制作alpine基础镜像
FROM alpine:3.8
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
# 设置locale
ENV LANG="en_US.UTF-8"   \
    LANGUAGE="en_US:en"  \
    LC_ALL="en_US.UTF-8" \
    TZ="Asia/Shanghai"

COPY alias.env /etc/profile.d/alias.env
COPY bashrc /root/.bashrc

# 修改源及常用软件
RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache ca-certificates && \
    apk add --no-cache bash curl util-linux tree tzdata && \
    sed -i '/^root/ {s/ash/bash/}' /etc/passwd

WORKDIR /root
