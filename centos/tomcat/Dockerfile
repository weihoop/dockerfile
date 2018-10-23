# create tomcat image
FROM weihoop/jdk:1.8.0
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

ENV CATALINA_HOME="/usr/local/tomcat"
ENV PATH="${CATALINA_HOME}/bin:${PATH}"

ADD apache-tomcat-8.5.15.tar.gz /usr/local/

COPY catalina.sh /usr/local/apache-tomcat-8.5.15/bin/
COPY server.xml /usr/local/apache-tomcat-8.5.15/conf/
COPY commons-io-2.4.jar /usr/local/apache-tomcat-8.5.15/lib/
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/apache-tomcat-8.5.15/bin/catalina.sh && \
    ln -sv /usr/local/apache-tomcat-8.5.15 /usr/local/tomcat && \ 
    chmod 755 /usr/local/bin/docker-entrypoint.sh 

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 8080
