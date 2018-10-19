
docker rmi weihoop/redis:3.2.12-alpine;docker rmi weihoop/redis:latest
docker build --no-cache -t 'weihoop/redis:3.2.12-alpine' .
docker tag weihoop/redis:3.2.12-alpine weihoop/redis:latest

docker images

docker push weihoop/redis:3.2.12-alpine
docker push weihoop/redis:latest
