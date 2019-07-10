# quarkus-microservice-template

Quarkus microservice template to serve as model for microservice projects.

## Pre-requisites

- Java 1.8+ with `JAVA_HOME` configured

## Make Commands

The **Makefile** contains the instructions used to generate this project as well the project command log history.

```bash
make bootstrap # Bootstraps the Quarkus project (Depends on Maven 3.5.3+ installed)
```

```bash
# Run the tests...
make test
```

```bash
# Builds and package the application artifact...
make build
```

```bash
# Runs the application locally...
$ make start
Running the tests and building the package artifact...
2019-07-10 23:02:07,762 INFO  [io.quarkus] (main) Quarkus 0.18.0 started in 0.691s. Listening on: http://[::]:8080
2019-07-10 23:02:07,770 INFO  [io.quarkus] (main) Installed features: [cdi, resteasy, resteasy-jsonb]
```
