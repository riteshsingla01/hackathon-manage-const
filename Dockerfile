# Start with a base image containing Java runtime

FROM openjdk:8-jdk-alpine
LABEL maintainer="ritesh.singla@gmail.com"
ENV CLASSPATH /opt/lib
EXPOSE 8080
ARG JAR_FILE=target/cloud-demo-1.0.jar
COPY ${JAR_FILE} /opt/cloud-demo-1.0.jar
WORKDIR /opt
ENTRYPOINT ["java","-jar","/opt/cloud-demo-1.0.jar"]