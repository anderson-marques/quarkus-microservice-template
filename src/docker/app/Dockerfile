# Step 1 - Download the Dependencies
FROM maven:3.6.0-jdk-8-alpine AS Step1
LABEL author="Anderson Carvalho"
WORKDIR /app
COPY pom.xml .
RUN [ "mvn", "dependency:go-offline", "package", "-B" ]

# Step 2 - Run the tests and build the application
FROM Step1 AS Step2
WORKDIR /app
COPY src src
RUN [ "mvn", "test", "install", "dependency:resolve", "-B" ]

# Step 3 - Copy the artifact and start the application
FROM fabric8/java-alpine-openjdk8-jre
ENV JAVA_OPTIONS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
ENV AB_ENABLED=jmx_exporter
COPY --from=Step2 /app/target/lib/* /deployments/lib/
COPY --from=Step2 /app/target/*-runner.jar /deployments/app.jar
ENTRYPOINT [ "/deployments/run-java.sh" ]
