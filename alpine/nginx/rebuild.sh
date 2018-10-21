docker rmi weihoop/nginx:1.14.0-alpine;docker rmi weihoop/nginx:latest
docker build --no-cache -t 'weihoop/nginx:1.14.0-alpine' .
docker tag weihoop/nginx:1.14.0-alpine weihoop/nginx:latest

docker push weihoop/nginx:1.14.0-alpine
docker push weihoop/nginx:latest

docker images
