From tomcat:9.0.76-jdk8

ADD count.war /usr/local/tomcat/webapps
ADD server.xml /usr/local/tomcat/conf
#COPY context.xml /usr/local/tomcat/conf
ADD setenv.sh /usr/local/tomcat/bin
RUN chmod +x /usr/local/tomcat/bin/setenv.sh

EXPOSE 8080
CMD ["catalina.sh", "run"]

