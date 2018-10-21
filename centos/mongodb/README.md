### build command

```
docker build --no-cache -t 'mongo:3.6.8' .
```

### docker run example

```
docker run -d --name mongo1 -p 27017:27017 \ 
       -v /data/docker/mongodb/data:/data/db \ 
       -v /data/docker/mongodb/logs:/data/logs weihoop/mongo:3.6.8 
```

### docker exec example

```
docker exec -it mongo1 bash
```
