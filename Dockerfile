From tomcat:9.0.76-jdk8

ADD count.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]

