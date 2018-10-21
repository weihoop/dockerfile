### build command example

```
docker build --no-cache -t "weihoop/centos:7.4.1708" .
```

### docker run example

```
docker run -itd --name centos1 weihoop/centos:7.4.1708
```

### docker exec example

```
docker exec -it centos1 bash 
```
