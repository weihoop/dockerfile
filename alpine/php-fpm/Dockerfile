# create tomcat image
FROM php:7.2.11-fpm-alpine3.8 
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
# 设置locale
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV TZ=Asia/Shanghai

# 修改源及常用软件
RUN mkdir -p /etc/apk/ && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache ca-certificates && \
    apk add --no-cache bash curl util-linux tree tzdata && \
    sed -i '/^root/ {s/ash/bash/}' /etc/passwd && \
    # 新建php文件目录
    mkdir -p /data/www && \
    chown nobody.nobody /data/www

# 优化系统操作
COPY alias.env /etc/profile.d/alias.env
COPY bashrc /root/.bashrc

# 修改php-fpm配置文件
COPY php-fpm.conf /usr/local/etc/php-fpm.conf
COPY www.conf /usr/local/etc/php-fpm.d/www.conf
COPY zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf

WORKDIR /root

CMD ["php-fpm"]

EXPOSE 9000
