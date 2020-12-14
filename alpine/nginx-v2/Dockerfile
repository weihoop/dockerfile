# create tomcat image
FROM nginx:1.19.5-alpine
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
COPY index.html /usr/share/nginx/html/index.html 

WORKDIR /root

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
