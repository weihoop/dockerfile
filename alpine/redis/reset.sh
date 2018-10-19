
docker stop redis1
docker rm redis1

docker build -t "weihoop/redis:3.2.12-alpine" .
docker run -itd --name redis1 weihoop/redis:3.2.12-alpine
docker exec -it redis1 bash && \
docker logs redis1
