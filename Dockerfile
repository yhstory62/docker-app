# FROM openjdk:latest
 FROM openjdk:11

 ARG port
 EXPOSE ${port}
 COPY ./build/libs/docker-app-0.0.1-SNAPSHOT.jar /usr/local/docker-app-0.0.1-SNAPSHOT.jar
 RUN chmod +x /usr/local/docker-app-0.0.1-SNAPSHOT.jar
 ENV docker-app 'Hello, Docker App !'
 WORKDIR /usr/local
 ENTRYPOINT ["java", "-jar", "docker-app-0.0.1-SNAPSHOT.jar"]