# Use JRE 17
FROM eclipse-temurin:17-jre

# Work directory
WORKDIR /app

# Download OpenTelemetry Java agent (latest)
ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar /app/opentelemetry-javaagent.jar

# Copy your Spring Boot JAR
COPY target/Employee-Index-0.0.1-SNAPSHOT.jar app.jar

# App port
EXPOSE 9000

# Run with OTEL agent
ENTRYPOINT ["java", "-javaagent:/app/opentelemetry-javaagent.jar", "-jar", "app.jar"]
