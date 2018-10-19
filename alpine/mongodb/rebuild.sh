
docker rmi weihoop/mongo:3.6.7-alpine;docker rmi weihoop/mongo:latest
docker build --no-cache -t 'weihoop/mongo:3.6.7-alpine' .
docker tag weihoop/mongo:3.6.7-alpine weihoop/mongo:latest

docker images

docker push weihoop/mongo:3.6.7-alpine
docker push weihoop/mongo:latest
