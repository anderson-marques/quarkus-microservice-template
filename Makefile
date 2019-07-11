bootstrap:
	@echo "Bootstrapping the project"
	@mvn io.quarkus:quarkus-maven-plugin:0.18.0:create \
    -DprojectGroupId=me.marques.anderson \
    -DprojectArtifactId=quarkus-microservice-template \
    -DclassName="me.marques.anderson.ping.boundary.PingResource" \
    -Dpath="/ping" \
    -Dextensions="resteasy-jsonb"
	@echo "======================== Finished ===================="

tests:
	@echo "Runs the tests using Maven..."
	@./mvnw test
	@echo "======================== Finished ===================="

build:
	@echo "Running the tests and building the package artifact..."
	@./mvnw package
	@echo "======================== Finished ===================="

app:
	@echo "Launches the application locally using local Java JVM"
	@java -jar target/application-runner.jar
	@echo "===================== http://127.0.0.1:8080/ ===================="

dc-tests:
	@echo "Runs the tests using Docker Compose..."
	@docker-compose build tests
	@docker-compose run tests
	@echo "======================== Finished ===================="

dc-app:
	@echo "Launches the application locally using Docker Compose"
	@docker-compose build app
	@docker-compose up -d app
	@echo "===================== http://127.0.0.1:8080/ ===================="

dc-down:
	@echo "Stopping Docker Compose services..."
	@docker-compose down
	@echo "======================== Finished ===================="
