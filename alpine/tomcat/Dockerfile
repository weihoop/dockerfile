# create tomcat image
FROM weihoop/jdk:latest
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

ENV TOMCAT_VERSION 8.5.15

ENV CATALINA_HOME="/usr/local/tomcat"
ENV PATH=${CATALINA_HOME}/bin:${PATH}

ADD apache-tomcat-${TOMCAT_VERSION}.tar.gz /usr/local/

COPY catalina.sh /usr/local/apache-tomcat-${TOMCAT_VERSION}/bin/
COPY server.xml /usr/local/apache-tomcat-${TOMCAT_VERSION}/conf/
COPY commons-io-2.4.jar /usr/local/apache-tomcat-${TOMCAT_VERSION}/lib/
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/apache-tomcat-${TOMCAT_VERSION}/bin/catalina.sh && \ 
    ln -sv /usr/local/apache-tomcat-${TOMCAT_VERSION} /usr/local/tomcat && \
    chmod 755 /usr/local/bin/docker-entrypoint.sh 

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 8080
