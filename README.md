# quarkus-microservice-template

Quarkus microservice template to serve as model for microservice projects.

---

## Pre-requisites

- Java 1.8+ with `JAVA_HOME` configured or
- Docker Compose installed

---

## Make Commands

The **Makefile** contains the instructions used to generate this project as well the project command log history.

### Bootstrap

```bash
make bootstrap # Bootstraps the Quarkus project (Depends on Maven 3.5.3+ installed)
```

### Test

```bash
# Run the tests using local Maven...
make tests
```

```bash
# Run the tests using Docker Compose...
make dc-tests
```

### App

```bash
# Runs the application using local Maven...
make app
```

```bash
# Runs the application using local Docker Compose...
make dc-app
```

---
© Grand'Anderson - #grandanderson :)
