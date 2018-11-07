# 镜像基于weihoop/centos镜像制作 
FROM weihoop/centos:latest
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

ENV REDIS_HOME=/usr/local/redis
ENV PATH=${REDIS_HOME}/bin:${PATH}

ADD redis-3.2.12.tar.gz /usr/local/src/
COPY redis.conf /etc/redis.conf

RUN yum install -y gcc make --nogpgcheck && \
    yum clean all && \
    cd /usr/local/src/redis-3.2.12 && \
    make && make PREFIX=/usr/local/redis-3.2.12 install && \
    ln -s /usr/local/redis-3.2.12 /usr/local/redis && \
    mkdir -p /var/log/redis && \
    rm -rf /usr/local/src/redis-3.2.12

VOLUME ["/data", "/var/log/redis"]

CMD ["redis-server", "/etc/redis.conf"]

EXPOSE 6379
