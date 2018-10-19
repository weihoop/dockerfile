docker rmi weihoop/jdk:1.8.0_121;docker rmi weihoop/jdk:latest
docker build --no-cache -t 'weihoop/jdk:1.8.0_121' .
docker tag weihoop/jdk:1.8.0_121 weihoop/jdk:latest

docker push weihoop/jdk:1.8.0_121
docker push weihoop/jdk:latest

docker images
