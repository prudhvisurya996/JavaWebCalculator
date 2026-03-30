# Use the official Tomcat image
FROM tomcat:9.0

# Copy your WAR file into the webapps directory
COPY target/*.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
