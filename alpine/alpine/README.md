### build command

```
docker build --no-cache -t 'weihoop/alpine:3.8' .
```

### docker run example

```
docker run -itd --name alpine1 weihoop/alpine:3.8 bash
```

## docker exec example

```
docker exec -it alpine1 bash
```
