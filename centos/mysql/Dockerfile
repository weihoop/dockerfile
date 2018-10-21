# 镜像基于weihoop/centos镜像制作
FROM weihoop/centos
MAINTAINER "Liuhongwei <weihoop@gmail.com>"

## Labels
LABEL \
	name="weihoop"'s MySQL 5.7 Image" \
	image="mysql-5.7" \
	vendor="cytopia" \
	license="MIT" \
	build-date="2018-1-1"

### Envs

# Version
# Check for Updates: https://dev.mysql.com/downloads/repo/yum/
ENV YUM_REPO_URL="https://dev.mysql.com/get/mysql57-community-release-el7-10.noarch.rpm" \
    # User/Group
    MY_USER="mysql" \
    MY_GROUP="mysql" \
    MY_UID="48" \
    MY_GID="48" \
    # Files
    MYSQL_BASE_INCL="/etc/my.cnf.d" \
    MYSQL_CUST_INCL1="/etc/mysql/conf.d" \
    MYSQL_CUST_INCL2="/etc/mysql/docker-default.d" \
    MYSQL_DEF_DAT="/data/mysql/data" \
    MYSQL_DEF_PID="/data/mysql" \
    MYSQL_DEF_SCK="/tmp" \
    MYSQL_DEF_LOG="/data/mysql/logs" \
    MYSQL_LOG_SLOW="/data/mysql/logs/slow.log" \
    MYSQL_LOG_ERROR="/data/mysql/logs/error.log" \
    MYSQL_LOG_QUERY="/data/mysql/logs/query.log"

### Install
RUN groupadd -g ${MY_GID} -r ${MY_GROUP} && \
    adduser ${MY_USER} -u ${MY_UID} -M -s /sbin/nologin -g ${MY_GROUP} && \
    yum -y install epel-release && \
    rpm -ivh ${YUM_REPO_URL} && \
    yum-config-manager --disable mysql55-community && \
    yum-config-manager --disable mysql56-community && \
    yum-config-manager --enable mysql57-community && \
    yum-config-manager --disable mysql80-community && \
    yum -y update && yum -y install mysql-community-server && \
    yum -y autoremove && \
    yum -y install hostname && \
    yum clean metadata && \
    yum clean all && \
    \
    ## Configure
    rm -rf ${MYSQL_BASE_INCL} && \
    rm -rf ${MYSQL_CUST_INCL1} && \
    rm -rf ${MYSQL_CUST_INCL2} && \
    rm -rf ${MYSQL_DEF_DAT} && \
    rm -rf ${MYSQL_DEF_SCK} && \
    rm -rf ${MYSQL_DEF_PID} && \
    rm -rf ${MYSQL_DEF_LOG} && \
    \
    mkdir -p ${MYSQL_BASE_INCL} && \
    mkdir -p ${MYSQL_CUST_INCL1} && \
    mkdir -p ${MYSQL_CUST_INCL2} && \
    mkdir -p ${MYSQL_DEF_DAT} && \
    mkdir -p ${MYSQL_DEF_SCK} && \
    mkdir -p ${MYSQL_DEF_PID} && \
    mkdir -p ${MYSQL_DEF_LOG} && \
    \
    chown -R ${MY_USER}:${MY_GROUP} ${MYSQL_BASE_INCL} && \
    chown -R ${MY_USER}:${MY_GROUP} ${MYSQL_CUST_INCL1} && \
    chown -R ${MY_USER}:${MY_GROUP} ${MYSQL_CUST_INCL2} && \
    chown -R ${MY_USER}:${MY_GROUP} ${MYSQL_DEF_DAT} && \
    chown -R ${MY_USER}:${MY_GROUP} ${MYSQL_DEF_SCK} && \
    chown -R ${MY_USER}:${MY_GROUP} ${MYSQL_DEF_PID} && \
    chown -R ${MY_USER}:${MY_GROUP} ${MYSQL_DEF_LOG} && \
    \
    chmod 0775 ${MYSQL_BASE_INCL} && \
    chmod 0775 ${MYSQL_CUST_INCL1} && \
    chmod 0775 ${MYSQL_CUST_INCL2} && \
    chmod 0775 ${MYSQL_DEF_DAT} && \
    chmod 0775 ${MYSQL_DEF_SCK} && \
    chmod 0775 ${MYSQL_DEF_PID} && \
    chmod 0775 ${MYSQL_DEF_LOG} && \
    \
    # make my.cnf
    echo "[client]"                                         > /etc/my.cnf && \
    echo "socket = ${MYSQL_DEF_SCK}/mysqld.sock"           >> /etc/my.cnf && \
    echo ""                                                >> /etc/my.cnf && \
    \
    echo "[mysql]"                                         >> /etc/my.cnf && \
    echo "socket = ${MYSQL_DEF_SCK}/mysqld.sock"           >> /etc/my.cnf && \
    echo ""                                                >> /etc/my.cnf && \
    \
    echo "[mysqld]"                                        >> /etc/my.cnf && \
    echo "skip-host-cache"                                 >> /etc/my.cnf && \
    echo "skip-name-resolve"                               >> /etc/my.cnf && \
    echo "datadir = ${MYSQL_DEF_DAT}"                      >> /etc/my.cnf && \
    echo "user = ${MY_USER}"                               >> /etc/my.cnf && \
    echo "port = 3306"                                     >> /etc/my.cnf && \
    echo "bind-address = 0.0.0.0"                          >> /etc/my.cnf && \
    echo "socket = ${MYSQL_DEF_SCK}/mysqld.sock"           >> /etc/my.cnf && \
    echo "pid-file = ${MYSQL_DEF_PID}/mysqld.pid"          >> /etc/my.cnf && \
    echo "general_log_file = ${MYSQL_LOG_QUERY}"           >> /etc/my.cnf && \
    echo "slow_query_log_file = ${MYSQL_LOG_SLOW}"         >> /etc/my.cnf && \
    echo "log-error = ${MYSQL_LOG_ERROR}"                  >> /etc/my.cnf && \
    echo ""                                                >> /etc/my.cnf && \
    echo "!includedir ${MYSQL_BASE_INCL}/"                 >> /etc/my.cnf && \
    echo "!includedir ${MYSQL_CUST_INCL1}/"                >> /etc/my.cnf && \
    echo "!includedir ${MYSQL_CUST_INCL2}/"                >> /etc/my.cnf

## Bootstrap Scipts
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh

## Volumes
#VOLUME ["/data/mysql/data","/data/mysql/logs","/etc/mysql/docker-default.d"]

## Entrypoint
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
