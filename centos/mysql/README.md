## build command

```
docker build --no-cache -t 'weihoop/mysql:5.7' .
```

### docker run example

```
docker run -d --name mysql --restart always -p 3306:3306 \
    -v /data/docker/volumes/mysql/data:/data/db \
    -v /data/docker/volumes/mysql/logs:/data/logs \
    -v /data/docker/volumes/mysql/conf.d:/etc/mysql/docker-default.d \
    -e MYSQL_ROOT_PASSWORD='Admin#123' weihoop/mysql:5.7
```
### docker exec example

```
docker exec -it mysql1 bash
```

### 参考文档

- https://github.com/cytopia/docker-mysql-5.7/blob/master/Dockerfile
