FROM tomcat:7
ADD target/*.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/bin
EXPOSE 8080
ENTRYPOINT "/usr/local/tomcat/bin/startup.sh"
