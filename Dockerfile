FROM openjdk
ENV HOME=/app
WORKDIR $HOME

EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/myapp.jar
ENTRYPOINT java -jar msapp.jar
