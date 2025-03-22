# Contributing to todos-java21-k8s

Welcome! We're excited you're interested in contributing to the `todos-java21-k8s` project. This guide will help you get started, even if you're new to Java, Spring Boot, Gradle, or Kubernetes.

## Project Overview

This project is a simple CRUD (Create, Read, Update, Delete) API for managing "todos" (tasks). It's built using modern technologies:

*   **Java 21:** The latest long-term support (LTS) version of Java.
*   **Spring Boot 3.4+:** A powerful framework for building Java applications.
*   **Gradle 8+:** A build automation tool.
*   **MongoDB:** A NoSQL database for storing todo data.
*   **Redis:** An in-memory data structure store, likely used for caching.
*   **Kubernetes (k8s):** A container orchestration platform.
*   **Tilt:** A tool for local Kubernetes development.

## Getting Started

### Prerequisites

Before you start, make sure you have the following installed:

1.  **Java 21 JDK:** You can download it from Oracle or OpenJDK.
2.  **Gradle:** You can install it or use the provided Gradle wrapper (recommended).
3.  **Docker Desktop:** This includes a local Kubernetes cluster. Make sure Kubernetes is enabled in Docker Desktop's settings.
4.  **Tilt:** Install it using `brew install tilt` (macOS) or follow the instructions on the Tilt website.

### Setting Up the Project

1.  **Clone the Repository:**
    ```bash
    git clone <repository-url>
    cd todos-java21-k8s
    ```
    (Replace `<repository-url>` with the actual repository URL.)

2.  **Build the Application:**
    ```bash
    ./gradlew build
    ```
    This command does the following:
    *   **Compiles** the Java code.
    *   **Runs tests** (unit and integration tests).
    *   **Packages** the application into a JAR file (in `build/libs`).

3. **Run the application with tilt**
    
    ```bash
    tilt up 
    ```

    This command will execute `TiltFile`, which creates k8s resources defined in `k8s_yaml` folder and start the application, mongodb and redis in k8s cluster.

4. **Stop the services**
    
    ```bash
    tilt down
    ```
    This command will stop the k8s deployments and services started by tilt.

### Understanding the Project Structure

Here's a breakdown of the key folders and files:

*   **`README.md`:** This file! It provides an overview of the project.
*   **`build.gradle`:** This is the heart of the Gradle build system. It defines:
    *   Project dependencies (e.g., Spring Boot, MongoDB driver).
    *   Build tasks (e.g., compile, test, package).
    *   Plugins (e.g., Java, Spring Boot).
*   **`gradlew`, `gradlew.bat`:** These are the Gradle wrapper scripts. They allow you to run Gradle without installing it globally. Just use `./gradlew` (Linux/macOS) or `gradlew.bat` (Windows) instead of `gradle`.
*   **`k8s_yaml/`:** This folder contains Kubernetes YAML files. These files define:
    *   **Deployments:** How to run the application, MongoDB, and Redis in containers.
    *   **Services:** How to expose the application and databases to the network.
*   **`src/main/java/`:** This is where the main Java source code lives. You'll find:
    *   **controller:** Handle incoming HTTP requests (e.g., creating a todo).
    *   **service:** Business logic (e.g., validating data, interacting with the database).
    *   **repository:** Data access layer (e.g., saving a todo to MongoDB).
    *   **model:** Data structure in DB (e.g., the `Todo` object).
    *   **mapper:** Mapping class to convert model to dto and vice versa.
    *   **dto:** The request/response body of data flowing through api controller.
    *   **config:** Beans or configuration to manage dependencies (e.g., `redis`)
*   **`src/main/resources/`:** This folder contains:
    *   **`application.yml`:** Configuration for the Spring Boot application (e.g., database connection details, port number).
*   **`src/test/java/`:** This is where the test code lives.
    *   **Unit tests:** Test individual components in isolation.
    *   **Integration tests:** Test how different components work together.
*   **`src/test/resources/postman/`:** This folder contains Postman files.
    *   **Postman Collection:** A set of pre-defined API requests.
    *   **Postman Environment:** Variables for the collection (e.g., base URL).
* **`Tiltfile`:** This file contains the configuration for Tilt. It defines how Tilt should build, deploy, and manage the application and its dependencies in the Kubernetes cluster.

### Key Technologies Explained

*   **Java:** A general-purpose, object-oriented programming language.
*   **Spring Boot:** A framework that simplifies Java development, especially for web applications. It provides:
    *   **Dependency Injection:** Manages object creation and relationships.
    *   **Auto-configuration:** Automatically configures many things for you.
    *   **Embedded web server:** No need to deploy to a separate server.
*   **Gradle:** A build automation tool that manages dependencies, compiles code, runs tests, and packages the application.
*   **Kubernetes:** A container orchestration platform that automates deploying, scaling, and managing containerized applications.
*   **Tilt:** A tool that makes local Kubernetes development easier. It automatically rebuilds and redeploys your application when you make changes.

### Contributing Workflow

1.  **Fork the Repository:** Create your own copy of the repository on GitHub.
2.  **Create a Branch:** Create a new branch for your changes (e.g., `feature/add-new-endpoint` or `fix/bug-in-todo-creation`).
3.  **Make Changes:** Write your code, add tests, and make sure everything works.

