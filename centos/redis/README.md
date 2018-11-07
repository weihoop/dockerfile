### build command

```
docker build -t 'redis:3.2.12' .
```

### docker run example

```
docker run -itd --name redis1 -p 6379:6379 \
       -v /data/docker/redis/rdbs:/data/ \
       -v /data/docker/redis/logs:/var/log/redis redis:3.2.12
```

### docker run example

```
docker exec -it redis1 bash
```
