
docker stop mongo1 ;docker rm mongo1
docker build --no-cache -t 'weihoop/mongo:3.6.8' .
docker run -itd --name mongo1  weihoop/mongo:3.6.8
docker exec -it mongo1 bash
