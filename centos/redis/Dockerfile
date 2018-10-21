# 镜像基于weihoop/centos镜像制作 
FROM weihoop/centos:latest
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
ENV REDIS_HOME="/usr/local/redis/"
ENV PATH=${REDIS_HOME}/bin:${PATH}

ADD redis-3.2.12.tar.gz /usr/local/src/

RUN yum install -y gcc make --nogpgcheck \
&& yum clean all \
&& cd /usr/local/src/redis-3.2.12 \
&& make && make PREFIX=/usr/local/redis-3.2.12 install \
&& ln -s /usr/local/redis-3.2.12 /usr/local/redis \
&& mkdir -p /data/{rdbs,logs} \
&& rm -rf /usr/local/src/redis-3.2.12

COPY redis.conf /etc/redis.conf
COPY docker-entrypoint /usr/local/redis/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]

EXPOSE 6379
