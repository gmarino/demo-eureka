FROM eclipse-temurin:17
COPY target/demo-eureka-1.0.0-SNAPSHOT.jar demo-eureka-1.0.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java -jar /demo-eureka-1.0.0-SNAPSHOT.jar"]