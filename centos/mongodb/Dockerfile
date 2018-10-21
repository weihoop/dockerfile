# 镜像基于weihoop/centos镜像制作 
FROM weihoop/centos
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
ENV MONGODB_HOME="/usr/local/mongodb/"
ENV PATH=${MONGODB_HOME}/bin:${PATH}

ADD mongodb-linux-x86_64-3.6.8.tgz /usr/local/
COPY gosu-amd64 /usr/local/bin/gosu
COPY mongod.conf /etc/mongod.conf
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN groupadd -g 1016 mongodb \ 
&& useradd -g 1016 -u 1016 -d /usr/local/mongodb -s /sbin/nologin -M mongodb \
&& ln -s /usr/local/mongodb-linux-x86_64-3.6.8/ /usr/local/mongodb \
&& mkdir -p /data/{db,logs} \
&& chown mongodb:mongodb -R /data/ \
&& chown mongodb:mongodb -R /usr/local/mongodb/
#&& chmod +x /usr/local/bin/gosu \
#&& gosu mongodb true

VOLUME ["/data/db" "/data/logs" ]

#USER mongodb

WORKDIR /data/

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 27017
