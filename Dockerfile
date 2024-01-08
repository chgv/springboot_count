From tomcat:9.0.76-jdk8

ADD count.war /usr/local/tomcat/webapps
ADD server.xml /usr/local/tomcat/conf
#DD context.xml /usr/local/tomcat/conf
ADD setenv.sh /usr/local/tomcat/bin
RUN chmod +x /usr/local/tomcat/bin/setenv.sh

EXPOSE 9080
EXPOSE 9443
CMD ["catalina.sh", "run"]

