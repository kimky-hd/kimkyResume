# Build stage
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM tomcat:10.1-jdk17
COPY --from=build /app/target/kimkyResume.war /usr/local/tomcat/webapps/ROOT.war

# Disable Tomcat shutdown port (8005) to avoid conflict with Render health checks
RUN sed -i 's/port="8005"/port="-1"/g' /usr/local/tomcat/conf/server.xml

# Expose port 8080
EXPOSE 8080

# Tomcat starts automatically
