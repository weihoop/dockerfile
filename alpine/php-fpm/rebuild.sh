docker rmi weihoop/php-fpm:7.2.11-alpine;docker rmi weihoop/php-fpm:latest
docker build --no-cache -t 'weihoop/php-fpm:7.2.11-alpine' .
docker tag weihoop/php-fpm:7.2.11-alpine weihoop/php-fpm:latest

docker push weihoop/php-fpm:7.2.11-alpine
docker push weihoop/php-fpm:latest

docker images
