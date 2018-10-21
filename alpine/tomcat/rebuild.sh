docker rmi weihoop/tomcat:8.5.15-alpine;docker rmi weihoop/tomcat:latest
docker build --no-cache -t 'weihoop/tomcat:8.5.15-alpine' .
docker tag weihoop/tomcat:8.5.15-alpine weihoop/tomcat:latest

docker push weihoop/tomcat:8.5.15-alpine
docker push weihoop/tomcat:latest

docker images
