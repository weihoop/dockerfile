# 镜像基于 weihoop/alpine镜像制作 
FROM redis:3.2.12-alpine3.8 
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
# 设置locale
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV TZ=Asia/Shanghai

# 修改源及常用软件
RUN mkdir -p /etc/apk && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache ca-certificates && \
    apk add --no-cache bash curl util-linux tree tzdata && \
    sed -i '/^root/ {s/ash/bash/}' /etc/passwd

# 优化系统操作
COPY alias.env /etc/profile.d/alias.env
COPY bashrc /root/.bashrc

# copy redis.conf
COPY redis.conf /etc/redis.conf

WORKDIR /root

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["redis-server","/etc/redis.conf"]
#CMD ["redis-server"]
#CMD ["/bin/bash"]

EXPOSE 6379
