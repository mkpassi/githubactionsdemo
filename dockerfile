FROM openjdk:8-jre-alpine
EXPOSE 8000
ARG JAR_FILE=build/libs/githubactionsdemo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} demo-kotlin.jar
CMD ["java", "-jar", "demo-kotlin.jar" ]