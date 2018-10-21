## build command example

```
docker build --no-cache -t 'weihoop/tomcat:8.5.15' .
```

## docker run example

```
docker run -itd --name tomcat1 weihoop/tomcat:8.5.15
```

## docker exec example

```
docker exec -it tomcat1 bash
```
