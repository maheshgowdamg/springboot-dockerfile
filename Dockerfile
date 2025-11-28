# Use lightweight JRE 17
FROM eclipse-temurin:17-jre-alpine

# Set working directory
WORKDIR /app

# Copy the Spring Boot JAR
COPY target/Employee-Index-0.0.1-SNAPSHOT.jar app.jar

# Expose application port
EXPOSE 9000

# Start the application (OTEL will be injected via Kubernetes)
ENTRYPOINT ["java", "-jar", "app.jar"]
