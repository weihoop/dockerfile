# This is a JDK image
FROM weihoop/alpine:3.8
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

ENV JAVA_HOME="/usr/local/jdk"
ENV PATH="${PATH}:${JAVA_HOME}/bin"
ENV CLASSPATH=".:${JAVA_HOME}/jre/lib/rt.jar:${JAVA_HOME}/lib/tools.jar"

# MD5 (jdk-8u121-linux-x64.tar.gz) = 91972fb4e753f1b6674c2b952d974320
#ADD jdk-8u121-linux-x64.tar.gz /usr/local/
COPY sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
COPY glibc-2.27-r0.apk /root/glibc-2.27-r0.apk

RUN curl -fSL http://mirror.cnop.net/jdk/linux/jdk-8u121-linux-x64.tar.gz \
    -o /usr/local/src/jdk-8u121-linux-x64.tar.gz && \
    tar zxf /usr/local/src/jdk-8u121-linux-x64.tar.gz -C /usr/local/ && \
    # 做软链接 && 使用伪随机函数生成器 && 安装Glibc
    ln -s /usr/local/jdk1.8.0_121/ /usr/local/jdk && \
    sed -i '/^securerandom.source/ {s/.*/securerandom.source=file:\/dev\/urandom/}' \
    /usr/local/jdk/jre/lib/security/java.security && \
    apk add glibc-2.27-r0.apk && \
    rm -f /root/glibc-2.27-r0.apk && \
    rm -f /usr/local/src/jdk-8u121-linux-x64.tar.gz
