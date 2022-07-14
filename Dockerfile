FROM openjdk:8-jdk-alpine
VOLUME /tmp
MAINTAINER Dimas Maryanto <software.dimas_m@icloud.com>

ADD  ./startup.sh  /tmp
ADD ./target/springboot2-discovery-service-example-v1.0.4-release.jar /tmp/springboot2-discovery-service-example-v1.0.4-release.jar


ENTRYPOINT ["sh", "startup.sh", "/tmp/springboot2-discovery-service-example-v1.0.4-release"]