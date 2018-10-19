docker rmi weihoop/alpine:3.8;docker rmi weihoop/alpine:latest
docker build --no-cache -t 'weihoop/alpine:3.8' .
docker tag weihoop/alpine:3.8 weihoop/alpine:latest

docker push weihoop/alpine:3.8
docker push weihoop/alpine:latest

docker images
