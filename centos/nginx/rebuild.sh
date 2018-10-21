docker rmi weihoop/nginx:1.10.3
docker build --no-cache -t 'weihoop/nginx:1.10.3' .

docker push weihoop/nginx:1.10.3

docker images |grep nginx
