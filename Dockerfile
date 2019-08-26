FROM openjdk:11-slim

EXPOSE 8088
ARG JAR_FILE=build/libs/*.jar
ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]