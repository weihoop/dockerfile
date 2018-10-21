# This is a JDK image
FROM weihoop/centos
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

ENV JAVA_HOME="/usr/local/jdk"
ENV CLASSPATH=".:${JAVA_HOME}/jre/lib/rt.jar:${JAVA_HOME}/lib/tools.jar"
ENV PATH="${JAVA_HOME}/bin:${PATH}"

ADD jdk-8u121-linux-x64.tar.gz /usr/local/

# 做软链接及使用伪随机函数生成器
RUN ln -s /usr/local/jdk1.8.0_121/ /usr/local/jdk && \
    sed -i '/^securerandom.source/ {s/.*/securerandom.source=file:\/dev\/urandom/}' \ 
    /usr/local/jdk/jre/lib/security/java.security
