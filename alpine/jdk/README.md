### build command

```
docker build --no-cache -t 'weihoop/jdk:1.8.0-alpine' .
```

### docker run example

```
docker run -itd --name jdk1 weihoop/jdk:1.8.0-alpine
```

### docker exec example

```
docker exec -it jdk1 bash
