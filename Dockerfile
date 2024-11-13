FROM eclipse-temurin:21.0.4_7-jdk-alpine

CMD ["./gradlew", "clean", "bootJar"]
COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
