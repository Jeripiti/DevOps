FROM tomcat:7
ADD /root/.jenkins/workspace/fsad/target/addressbook.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/bin
EXPOSE 8080
