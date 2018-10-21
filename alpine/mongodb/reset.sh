
docker stop mongo1
docker rm mongo1

docker build -t "weihoop/mongo:3.6.8-alpine" .
docker run -itd --name mongo1 weihoop/mongo:3.6.8-alpine
docker exec -it mongo1 bash && \
docker logs mongo1
