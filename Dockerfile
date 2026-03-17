FROM eclipse-temurin:17
COPY target/demo-eureka-0.0.1-SNAPSHOT.jar demo-eureka-0.0.1-SNAPSHOT.jar
EXPOSE 8761
ENTRYPOINT ["sh", "-c", "java -jar /demo-eureka-0.0.1-SNAPSHOT.jar"]
