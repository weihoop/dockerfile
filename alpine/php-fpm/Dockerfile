# Create php-fpm image
FROM php:7.2.11-fpm-alpine3.8
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
# 设置locale
ENV LANG="en_US.UTF-8"   \
    LANGUAGE="en_US:en"  \
    LC_ALL="en_US.UTF-8" \
    TZ="Asia/Shanghai"

# 修改源及常用软件
RUN mkdir -p /etc/apk/ && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache ca-certificates && \
    apk add --no-cache bash curl util-linux tree tzdata && \
    sed -i '/^root/ {s/ash/bash/}' /etc/passwd

# 优化系统操作
COPY alias.env /etc/profile.d/alias.env
COPY bashrc /root/.bashrc

# 修改php-fpm配置文件
COPY ./conf/php-fpm.conf /usr/local/etc/php-fpm.conf
COPY ./conf/www.conf /usr/local/etc/php-fpm.d/www.conf
COPY ./conf/zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf
COPY ./conf/php.ini /usr/local/etc/php/php.ini
COPY ./conf/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint

# 修改nobody uid 和 gid
RUN usermod -u 99 nobody && \
    groupmod -g 99 nobody && \
    # 新建php文件目录
    mkdir -p /data/www && \
    chown 99:99 -R /data/www && \
    chmod 755 /usr/local/bin/docker-php-entrypoint && \
    # 安装依赖
    apk add --no-cache --update gcc g++ make m4 autoconf perl bzip2 bzip2-dev curl-dev \
            graphicsmagick-dev libtool imagemagick-dev libxml2 libxml2-dev openldap-dev \
            postgresql-dev libedit-dev gettext gettext-dev libcurl libjpeg libpng libpng-dev \
            freetype freetype-dev gmp gmp-dev libmcrypt libmcrypt-dev readline readline-dev \
            libxslt libxslt-dev libmemcached-dev libmemcached-libs zlib && \
    \
    # 安装PHP常用模块
    docker-php-ext-install \
            bcmath \
            bz2 \
            exif \
            ftp \
            gd \
            gettext \
            zip \
            ldap \
            mysqli \
            pdo_mysql \
            pdo_pgsql \
            pgsql \
            pcntl \
            sysvsem \
            sysvshm \
            shmop && \
    \
    # 清理镜像中缓存文件
    rm -f /var/cache/apk/* && \
    \
    # 安装redis要先安装igbinary
    echo 'y' | pecl install igbinary && docker-php-ext-enable igbinary && \
    echo 'n' | pecl install redis && docker-php-ext-enable redis && \
    echo 'no'| pecl install memcached && docker-php-ext-enable memcached && \
    echo 'y' | pecl install mongodb && docker-php-ext-enable mongodb && \
    echo 'y' | pecl install imagick && docker-php-ext-enable imagick && \
    # 清理镜像中缓存文件
    rm -f /var/cache/apk/*

WORKDIR /root

CMD ["php-fpm"]

EXPOSE 9000
