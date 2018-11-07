### build command

```
docker build -t '3.2.12-alpine3.8' .
```

### docker run example

```
docker run -itd --name redis1 -p 6379:6379 \
       -v /data/docker/redis/rdbs:/data/ \
       -v /data/docker/redis/logs:/var/log/redis 3.2.12-alpine3.8
```

### docker run example

```
docker exec -it redis1 bash
```
