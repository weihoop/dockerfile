docker rmi weihoop/mysql:5.7; docker rmi weihoop/mysql:latest
docker build --no-cache -t "weihoop/mysql:5.7" .

docker tag weihoop/mysql:5.7 weihoop/mysql:latest
docker tag weihoop/mysql:5.7 weihoop/mysql:5.7.23
docker push weihoop/mysql:5.7
docker push weihoop/mysql:5.7.23
docker push weihoop/mysql:latest

sleep 3
docker images |grep mysql
