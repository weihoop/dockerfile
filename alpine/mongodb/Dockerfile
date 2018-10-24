# 镜像基于 weihoop/alpine镜像制作 
FROM weihoop/alpine:3.8 
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

COPY mongod.conf /etc/mongod.conf
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN apk add --no-cache mongodb=3.6.7-r0 && \
    mkdir -p /data/db && \ 
    mkdir -p /data/logs && \ 
    chown mongodb:mongodb -R /data && \
    chmod 755 /usr/local/bin/docker-entrypoint.sh

VOLUME ["/data/db","/data/logs" ]

#ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD ["mongod","-f","/etc/mongod.conf"]

EXPOSE 27021
