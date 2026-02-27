# Use Eclipse Temurin 17 JDK
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the WAR file from Maven target
COPY target/*.war app.war

# Expose the port your app will run on
EXPOSE 8080

# Run using java -jar
CMD ["java", "-jar", "app.war"]
