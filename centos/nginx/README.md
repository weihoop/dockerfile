### build command example

```
docker build --no-cache -t 'weihoop/nginx:1.10.3' .
```

### docker run example

```
docker run -itd --name nginx1 -p 80:80 \
       -v /data/docker/nginx1/www:/data/www \
       weihoop/nginx:1.10.3
```

### docker exec example

```
docker exec -it nginx1 bash
```
