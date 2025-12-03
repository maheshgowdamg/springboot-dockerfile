FROM eclipse-temurin:17-jre

WORKDIR /app

# ✅ Copy your Employee Index JAR
ADD ./target/Employee-Index-0.0.1-SNAPSHOT.jar /app/employee-index.jar

# ✅ Download OpenTelemetry Java Agent at build time
ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar /app/opentelemetry-javaagent.jar

# ✅ Start application WITH OpenTelemetry
ENTRYPOINT ["java","-javaagent:/app/opentelemetry-javaagent.jar","-jar","/app/employee-index.jar"]
