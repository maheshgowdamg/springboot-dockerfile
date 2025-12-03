FROM eclipse-temurin:17-jre

WORKDIR /app

# ✅ Copy your Employee Index JAR
COPY ./target/Employee-Index-0.0.1-SNAPSHOT.jar /app/employee-index.jar

# (Optional) Document port
EXPOSE 9000

# ✅ Start application NORMALLY (agent will be attached via JAVA_TOOL_OPTIONS)
ENTRYPOINT ["java","-jar","/app/employee-index.jar"]

# ✅ IMPORTANT: Start Java WITH JAVA_TOOL_OPTIONS support
#ENTRYPOINT ["sh","-c","exec java $JAVA_TOOL_OPTIONS -jar /app/employee-index.jar"]
