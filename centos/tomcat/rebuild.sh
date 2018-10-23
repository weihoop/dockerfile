docker rmi weihoop/tomcat:8.5.15
docker build --no-cache -t 'weihoop/tomcat:8.5.15' .

docker push weihoop/tomcat:8.5.15

docker images |grep tomcat 
