docker stop mysql1;docker rm mysql1
docker build --no-cache -t "weihoop/mysql:5.7" .

docker run -itd --name mysql1 -e MYSQL_ROOT_PASSWORD='MingAn#YGu!2016' weihoop/mysql:5.7

docker exec -it mysql1 bash
