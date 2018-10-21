# build command

```
docker build -t 'weihoop/mongo:3.6.8-alpine' .
```

# docker run example

```
docker run -itd --name mongo1 -p 27021:27021 \
       -v /data/docker/mongodb/db:/data/db 
       -v /data/docker/mongodb/logs:/data/logs weihoop/mongo:3.6.8-alpine
```

### docker exec example

```
docker exec -it mongo1 bash
``` 
