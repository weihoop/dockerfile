### build command

```
docker build --no-cache -t 'weihoop/php-fpm:7.2.11-alpine ' .
```

### docker run example

```
docker run -itd --name php-fpm1 weihoop/php-fpm:7.2.11-alpine 
```

### docker exec example

```
docker exec -it php-fpm1 bash
```
