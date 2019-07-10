# Bootstrap the project using Maven
bootstrap:
	@echo "Bootstrapping the project"
	@mvn io.quarkus:quarkus-maven-plugin:0.18.0:create \
    -DprojectGroupId=me.marques.anderson \
    -DprojectArtifactId=quarkus-microservice-template \
    -DclassName="me.marques.anderson.ping.boundary.PingResource" \
    -Dpath="/ping" \
    -Dextensions="resteasy-jsonb"
	@echo "======================== Finished ===================="

# Tests the application
test:
	@echo "Running tests..."
	@./mvnw test
	@echo "======================== Finished ===================="

# Packages the application creating the *-runner.jar
build:
	@echo "Running the tests and building the package artifact..."
	@./mvnw package
	@echo "======================== Finished ===================="

# Launches the application locally - http://127.0.0.1:8080/ping
start:
	@echo "Running the tests and building the package artifact..."
	@java -jar target/application-runner.jar
	@echo "======================== Finished ===================="
  