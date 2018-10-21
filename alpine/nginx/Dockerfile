# create tomcat image
FROM nginx:1.14.0-alpine 
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
    # 新建web目录
    mkdir -p /data/www && \
    chown nobody.nobody /var/cache/nginx /data/www

# 优化系统操作
COPY alias.env /etc/profile.d/alias.env
COPY bashrc /root/.bashrc

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /data/www/index.html

WORKDIR /root

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
