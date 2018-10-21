# This is a JDK image
FROM weihoop/centos
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

ENV JAVA_HOME="/usr/local/jdk"
ENV CLASSPATH=".:${JAVA_HOME}/jre/lib/rt.jar:${JAVA_HOME}/lib/tools.jar"
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# MD5 (jdk-8u121-linux-x64.tar.gz) = 91972fb4e753f1b6674c2b952d974320
#ADD jdk-8u121-linux-x64.tar.gz /usr/local/

RUN curl -fSL http://mirror.cnop.net/jdk/linux/jdk-8u121-linux-x64.tar.gz \
    -o /usr/local/src/jdk-8u121-linux-x64.tar.gz && \
    tar zxf /usr/local/src/jdk-8u121-linux-x64.tar.gz -C /usr/local/ && \
    # 做软链接 && 使用伪随机函数生成器
    ln -s /usr/local/jdk1.8.0_121/ /usr/local/jdk && \
    sed -i '/^securerandom.source/ {s/.*/securerandom.source=file:\/dev\/urandom/}' \
    /usr/local/jdk/jre/lib/security/java.security && \
    rm -f /usr/local/src/jdk-8u121-linux-x64.tar.gz
