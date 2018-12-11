FROM tomcat:7
ADD target/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh',"run"]
CMD echo "Webapp is successfully deployed"
