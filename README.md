# todos-java21-k8s

Todos crud api built using modern tech stack: 

* Java 21
* Gradle 8+
* Spring Boot 3.4+
    * Spring Initializr (vscode extension)
    * Spring Web   
    * Spring Data: Spring Data MongoDB and Spring Data Redis are used for data access.
* Cloud Resources
    * MongoDB
    * Redis
* Kubernetes Container
    * Tilt

## Local Development Setup

Here's how to set up and run the project locally using Docker and Gradle:

### Prerequisites

*   
*   Java 21 JDK installed.
*   Gradle installed (or use the Gradle wrapper).
*   Kubernetes cluster (example: Docker Desktop installed and running with Kubernetes enabled)
*   Tilt (mac: brew install tilt)

### Steps

1.  **Build the Application with Gradle:**

    ```bash
    ./gradlew build
    ```

    This command builds the application, runs tests, and creates a JAR file in the `build/libs` directory.

3. **Run the application with tilt**
    
    ```bash
    tilt up 
    ```

    This command will execute `TiltFile`, which creates k8s resources defined in `k8s_yaml` folder and start the application, mongodb and redis in k8s cluster.

3. **Stop the services**
    
    ```bash
    tilt down
    ```
    This command will stop the k8s deployments and services started by tilt.

### Additional Gradle Commands

*   **Clean:** `./gradlew clean` - Removes the `build` directory.
*   **Test:** `./gradlew test` - Runs the unit and integration tests.

### Accessing the Application

Once the application is running, you can access it at `http://localhost:8080`.
Postman collection and environment files are available at `src/test/resources/postman`.

## Next Phase - libraries / extensions planned

*   **Reactive:**: Spring Web Reactive
*   **Gateway:** Spring Cloud Gateway
*   **Rate Limiting:** Resilience4j, Circuit Breaker
*   **Health/Metrics:** Spring Boot Actuator
*   **Observability:** Micrometer
*   **Logging/Security:** Spring Boot Aop, Logback/LogStash
*   **Security:**: Spring Boot Security, JWT token

## Personal Note

While my professional background provided opportunities in .NET and related Azure cloud tech stack, I thoroughly enjoyed learning & coding in Java & Go, as well as containerization with Docker and Kubernetes.
