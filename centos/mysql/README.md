## build command

```
docker build --no-cache -t 'weihoop/mysql:5.7' .
```

### docker run example

```
docker run -itd --name mysql1 -p 3306:3306 -v /data/docker/mysql/data:/data/mysql/data -v /data/docker/mysql/logs:/data/mysql/logs -e MYSQL_ROOT_PASSWORD='Admin#123' weihoop/mysql:5.7
```
### docker exec example

```
docker exec -it mysql1 bash
```

### 参考文档

- https://github.com/cytopia/docker-mysql-5.7/blob/master/Dockerfile
