# 镜像基于weihoop/centos镜像制作 
FROM weihoop/centos
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

COPY nginx.repo /etc/yum.repos.d
RUN yum install -y nginx-1.10.3 curl --nogpgcheck \
&& yum clean all \
&& mkdir -p /data/www && rm -f /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/default.conf
COPY index.html /data/www/index.html

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
