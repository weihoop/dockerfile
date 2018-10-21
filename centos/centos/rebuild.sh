docker rmi weihoop/centos:7.4.1708 ; docker rmi weihoop/centos:latest

docker build -t "weihoop/centos:7.4.1708" .
docker tag weihoop/centos:7.4.1708 weihoop/centos:latest

docker push weihoop/centos:7.4.1708
docker push weihoop/centos:latest


