From tomcat:9.0.76-jdk8

ADD count.war /usr/local/tomcat/webapps
COPY server.xml /usr/local/tomcat/conf
#COPY context.xml /usr/local/tomcat/conf
COPY setenv.sh /usr/local/tomcat/bin

EXPOSE 8080
CMD ["catalina.sh", "run"]

