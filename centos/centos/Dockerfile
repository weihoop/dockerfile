# 镜像基于docker hub镜像更改 
FROM centos:7.4.1708
MAINTAINER "Liuhongwei <weihoop@gmail.com>"
# 设置locale
ENV LANG="en_US.UTF-8"   \
    LANGUAGE="en_US:en"  \
    LC_ALL="en_US.UTF-8" \
    TZ="Asia/Shanghai"


COPY limits.conf /etc/security/limits.conf 
COPY 20-nproc.conf /etc/security/limits.d/20-nproc.conf
COPY alias.env /etc/profile.d/alias.env

RUN yum install -y net-tools && yum clean all && \
    echo 'source /etc/profile.d/alias.env' >> /etc/bashrc

WORKDIR /root
