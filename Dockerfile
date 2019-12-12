# Start with a base image containing Java runtime

FROM openjdk:8-jdk-alpine
LABEL maintainer="ritesh.singla@gmail.com"
ENV CLASSPATH /opt/lib
EXPOSE 8080
ARG JAR_FILE=target/hackathon-mc-1.0.jar
COPY ${JAR_FILE} /opt/hackathon-mc-1.0.jar
WORKDIR /opt
ENTRYPOINT ["java","-jar","/opt/hackathon-mc-1.0.jar"]
