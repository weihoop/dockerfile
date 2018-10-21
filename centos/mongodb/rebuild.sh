docker rmi weihoop/mongo:3.6.8
docker build --no-cache -t 'weihoop/mongo:3.6.8' .

docker push weihoop/mongo:3.6.8

docker images |grep mongo
