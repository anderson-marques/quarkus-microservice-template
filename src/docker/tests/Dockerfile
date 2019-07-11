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
