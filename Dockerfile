FROM tomcat:9.0
ADD ./target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD run
