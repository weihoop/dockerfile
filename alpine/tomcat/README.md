### build command example

```
docker build --no-cache -t 'weihoop/tomcat:8.5.15-alpine' .
```

### docker run example

```
docker run -itd --name tomcat1 -p 8080:8080 \
       -v /data/docker/tomcat1/webapps:/usr/local/tomcat/webapps \
       weihoop/tomcat:8.5.15-alpine
```

### docker exec example

```
docker exec -it tomcat1 bash
```
