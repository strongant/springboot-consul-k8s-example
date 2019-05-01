FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY target/${JAR_FILE} app.jar
ENV DISCOVERY_SERVICE_HOST 192.168.1.50
ENV DISCOVERY_SERVICE_URL 8500
ENV DATABASE_HOST 192.168.1.50
ENV DATABASE_PORT 5432
ENV DATABASE_USERNAME postgres
ENV DATABASE_PASSWORD admin
ENV DATABASE_NAME postgres
ENTRYPOINT ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom --DISCOVERY_SERVICE_HOST=${DISCOVERY_SERVICE_HOST} --DISCOVERY_SERVICE_URL=${DISCOVERY_SERVICE_URL} --DATABASE_HOST=${DATABASE_HOST} --DATABASE_PORT=${DATABASE_PORT} --DATABASE_USERNAME=${DATABASE_USERNAME} --DATABASE_PASSWORD=${DATABASE_PASSWORD} --DATABASE_NAME=${DATABASE_NAME}",  "/app.jar"]
