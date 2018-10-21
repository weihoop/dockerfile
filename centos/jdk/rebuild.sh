docker rmi weihoop/jdk:1.8.0_121;docker rmi weihoop/jdk:latest
docker build --no-cache -t 'weihoop/jdk:1.8.0' .

docker push weihoop/jdk:1.8.0

docker images |grep jdk
