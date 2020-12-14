### build command

```
docker build --no-cache -t 'weihoop/nginx:demo-v1' .
```

### docker run example

```
docker run -itd --name nginx1 weihoop/nginx:demo-v1
```

### docker exec example

```
docker exec -it nginx1 bash
```

### 参考文档

- https://github.com/nginxinc/docker-nginx/tree/d377983a14b214fcae4b8e34357761282aca788f/stable/alpine
