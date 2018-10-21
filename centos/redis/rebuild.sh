docker rmi weihoop/redis:3.2.12
docker build --no-cache -t 'weihoop/redis:3.2.12' .

docker push weihoop/redis:3.2.12

docker images |grep redis
