docker rmi weihoop/tomcat:8.5.15;docker rmi weihoop/tomcat:latest
docker build --no-cache -t 'weihoop/tomcat:8.5.15' .
docker tag weihoop/tomcat:8.5.15 weihoop/tomcat:latest

docker push weihoop/tomcat:8.5.15
docker push weihoop/tomcat:latest

docker images
