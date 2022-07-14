FROM openjdk:8-jdk-alpine
VOLUME /tmp
MAINTAINER Dimas Maryanto <software.dimas_m@icloud.com>

COPY target/springboot2-discovery-service-example-v1.0.4-release.jar springboot2-discovery-service-example-v1.0.4-release.jar
ENTRYPOINT ["sh", "startup.sh", "springboot2-discovery-service-example-v1.0.4-release"]