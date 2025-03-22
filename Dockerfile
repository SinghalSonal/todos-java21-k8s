FROM openjdk:21-jdk
WORKDIR /app
COPY build/libs/todos-k8s-1.0.0.jar app.jar
ENTRYPOINT [ "java", "-jar", "app.jar" ]