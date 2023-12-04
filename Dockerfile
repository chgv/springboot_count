FROM tomcat:9.0.8-jre8-alpine
ADD count.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]