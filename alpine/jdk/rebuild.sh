docker rmi weihoop/jdk:1.8.0-alpine;docker rmi weihoop/jdk:latest
docker build --no-cache -t 'weihoop/jdk:1.8.0-alpine' .
docker tag weihoop/jdk:1.8.0-alpine weihoop/jdk:latest

docker push weihoop/jdk:1.8.0-alpine
docker push weihoop/jdk:latest

docker images
