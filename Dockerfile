# syntax=docker/dockerfile:1
FROM openjdk:17-slim-bullseye
LABEL authors="rahul"
WORKDIR /app
COPY   target/springboot-kafka-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]