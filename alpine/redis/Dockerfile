# 镜像基于 weihoop/alpine镜像制作 
FROM redis:3.2.12-alpine3.8 
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
# 设置locale
ENV LANG="en_US.UTF-8"   \
    LANGUAGE="en_US:en"  \
    LC_ALL="en_US.UTF-8" \
    TZ="Asia/Shanghai"

# 修改源及常用软件
RUN mkdir -p /etc/apk && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories && \
    apk add --no-cache --update ca-certificates && \
    apk add --no-cache --update bash curl util-linux tree tzdata && \
    sed -i '/^root/ {s/ash/bash/}' /etc/passwd && \
    #chmod 755 /usr/local/bin/docker-entrypoint.sh && \
    mkdir /var/log/redis && chown redis.redis /var/log/redis

# 优化系统操作
COPY alias.env /etc/profile.d/alias.env
COPY bashrc /root/.bashrc

# 拷贝redis配置
COPY redis.conf /etc/redis.conf

WORKDIR /root

VOLUME ["/data", "/var/log/redis"]

CMD ["/etc/redis.conf"]

EXPOSE 6379
