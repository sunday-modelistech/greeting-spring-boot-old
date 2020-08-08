# Download java 8 jdk from alpine
FROM openjdk:8-alpine
# Create new directory
RUN mkdir /usr/local/webservice/
# Copy api source file to new directory
COPY target/rest-service-0.0.1-SNAPSHOT.jar /usr/local/webservice/rest-app.jar
# Add executable right to api file
RUN chmod 750 /usr/local/webservice/rest-app.jar
# Expose application port
EXPOSE 8080
# Run application as java application
CMD java -jar /usr/local/webservice/rest-app.jar
