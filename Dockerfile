From tomcat:9.0.76-jdk8

ADD count.war /usr/local/tomcat/webapps
COPY server.xml /usr/local/tomcat/conf
COPY server.jks /usr/local/tomcat/conf
COPY context.xml /usr/local/tomcat/conf
COPY logging.properties /usr/local/tomcat/conf
COPY setenv.sh /usr/local/tomcat/bin
RUN chmod +x /usr/local/tomcat/bin/setenv.sh
#COPY tomcat-users.xml /usr/local/tomcat/conf
COPY *.jar /usr/local/tomcat/lib

EXPOSE 8443
CMD ["catalina.sh", "run"]