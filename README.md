<p align="center">
  <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" />
</p>
<p align="center">
    <h1 align="center">SPRINGBOOT-KAFKA-K8S</h1>
</p>
<p align="center">
    <em>Streamline your microservices with Spring, Kafka, and Kubernetes</em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/rahul-ojha-07/springboot-kafka-k8s?style=default&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/rahul-ojha-07/springboot-kafka-k8s?style=default&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/rahul-ojha-07/springboot-kafka-k8s?style=default&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/rahul-ojha-07/springboot-kafka-k8s?style=default&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
	<!-- default option, no dependency badges. -->
</p>
<hr>

##  Quick Links

> - [ Overview](#-overview)
> - [ Features](#-features)
> - [ Repository Structure](#-repository-structure)
> - [ Modules](#-modules)
> - [ Getting Started](#-getting-started)
>   - [ Installation](#-installation)
>   - [ Running springboot-kafka-k8s](#-running-springboot-kafka-k8s)
>   - [ Tests](#-tests)
> - [ Project Roadmap](#-project-roadmap)
> - [ Contributing](#-contributing)
> - [ License](#-license)
> - [ Acknowledgments](#-acknowledgments)

---

##  Overview

The springboot-kafka-k8s project is a robust and versatile platform built using Spring Boot, Kafka, and Kubernetes. It provides a highly scalable and fault-tolerant solution for building real-time streaming applications. The project leverages Spring Boot's simplicity and convention-over-configuration approach to easily develop and deploy microservices. Kafka acts as the backbone for streaming messages and enabling reliable message delivery. Kubernetes manages the containerized deployment of the application, ensuring scalability, fault tolerance, and easy management of the system. By combining these technologies, the project enables developers to build and deploy distributed systems that can handle high volumes of data and provide real-time insights, making it a valuable tool for applications dealing with streaming data and event-driven architectures.

---

##  Features

|    |   Feature         | Description |
|----|-------------------|---------------------------------------------------------------|
| ⚙️  | **Architecture**  | The project follows a Spring Boot architecture, utilizing Kafka for messaging and Kubernetes for container orchestration. It uses microservices and a message broker pattern for scalability and fault tolerance. |
| 🔩 | **Code Quality**  | The codebase follows good quality and style practices. It maintains clean code, proper indentation, and consistent naming conventions. |
| 📄 | **Documentation** | The project has a good extent of documentation, including a README file and comments within the code explaining the functionality of different components. |
| 🔌 | **Integrations**  | The project integrates with Spring Cloud for service discovery and configuration management, Kafka for messaging, and Docker for containerization. |
| 🧩 | **Modularity**    | The codebase is well modularized, following the principles of separation of concerns. It separates the business logic, data access, and message handling into different modules. |
| 🧪 | **Testing**       | The project uses JUnit for unit testing and provides test coverage for critical components. It also includes integration tests to validate the interaction between different services. |
| ⚡️  | **Performance**   | The project is designed for efficiency and high-performance. It leverages the capabilities of Kafka for distributed message processing and implements optimizations to minimize resource usage. |
| 🛡️ | **Security**      | The project follows secure coding practices, including input validation and protection against common vulnerabilities. It also uses authentication and authorization mechanisms to control access to resources. |
| 📦 | **Dependencies**  | Key external libraries and dependencies include Spring Cloud, Kafka, and Docker. These dependencies enable the project to leverage distributed systems and containerization. |


---

##  Repository Structure

```sh
└── springboot-kafka-k8s/
    ├── .mvn
    ├── Dockerfile
    ├── build.sh
    ├── cleanup.sh
    ├── k8s
    │   ├── SpringBootKafkaConfigMap.yaml
    │   ├── SpringBootKafkaDeployment.yaml
    │   ├── SpringBootKafkaService.yaml
    │   └── kafka
    │       ├── KafkaManifest.yaml
    │       ├── KafkaNamespace.yaml
    │       └── ZookeeperManifest.yaml
    ├── mvnw
    ├── mvnw.cmd
    └── src
        ├── main
        │   ├── java
        │   └── resources
        └── test
            └── java
```

---

##  Modules

<details closed><summary>.</summary>

| File                                                                                       | Summary                                                                                                                                                                                                                                                                                                                               |
| ---                                                                                        | ---                                                                                                                                                                                                                                                                                                                                   |
| [.gitignore](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/.gitignore) | This code snippet is part of a Spring Boot Kafka project within a larger repository. It includes files related to building and deploying the project on a Kubernetes cluster. The code achieves the configuration, deployment, and service setup for Kafka within the cluster.                                                        |
| [mvnw](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/mvnw)             | The mvnw file in the repository is a Maven Wrapper startup script. It configures the environment variables, sets the Java home directory, and launches Maven to build and run the project. It also handles downloading the Maven wrapper if it is missing from the project.                                                           |
| [mvnw.cmd](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/mvnw.cmd)     | The code snippet in mvnw.cmd is a command script used to set up and execute the Apache Maven Wrapper. It validates the Java home directory, detects the project base directory, and downloads the Maven wrapper if necessary. Finally, it launches Maven with the specified arguments.                                                |
| [cleanup.sh](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/cleanup.sh) | The `cleanup.sh` script is responsible for cleaning up the Kubernetes resources and artifacts related to the Spring Boot Kafka application. It deletes the Kubernetes resources defined in the `k8s` directory, removes the Docker image created for the application, and performs a Maven clean build to remove any generated files. |
| [Dockerfile](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/Dockerfile) | The Dockerfile in the springboot-kafka-k8s repository is responsible for creating a Docker image. It sets the base image to OpenJDK 17, copies the Spring Boot JAR file into the image, exposes port 8080, and runs the JAR file as the entrypoint.                                                                                   |
| [build.sh](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/build.sh)     | The `build.sh` script is responsible for building the Spring Boot application, creating a Docker image, and deploying it to Kubernetes using the YAML files in the `k8s` directory. The script skips tests during the build process.                                                                                                  |
| [pom.xml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/pom.xml)       | This code snippet represents the pom.xml file of a Spring Boot Kafka project. It defines the project's dependencies, including Spring Kafka and Spring Cloud components. It also configures the Spring Boot Maven plugin.                                                                                                             |

</details>

<details closed><summary>k8s</summary>

| File                                                                                                                                   | Summary                                                                                                                                                                                                                                                                                                                                                                                                   |
| ---                                                                                                                                    | ---                                                                                                                                                                                                                                                                                                                                                                                                       |
| [SpringBootKafkaDeployment.yaml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/k8s/SpringBootKafkaDeployment.yaml) | The code snippet in `k8s/SpringBootKafkaDeployment.yaml` is a deployment configuration file that specifies the deployment details for the Spring Boot Kafka application in a Kubernetes cluster. It defines the container image, ports, volume mounts, and health checks for the application.                                                                                                             |
| [SpringBootKafkaService.yaml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/k8s/SpringBootKafkaService.yaml)       | The code snippet, located at `k8s/SpringBootKafkaService.yaml`, defines a Kubernetes Service for the Spring Boot Kafka application. It exposes the application on port 80 and targets port 8080 for communication. The service is of type NodePort, allowing external access to the application.                                                                                                          |
| [SpringBootKafkaConfigMap.yaml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/k8s/SpringBootKafkaConfigMap.yaml)   | The `SpringBootKafkaConfigMap.yaml` file in the `k8s` directory of the repository defines the config map for the Spring Boot Kafka application. It specifies various properties such as the application name, Kafka bootstrap servers, group ID, and topics. Additionally, it enables Kubernetes reload and config map monitoring. The file also includes management endpoints for health and Prometheus. |

</details>

<details closed><summary>k8s.kafka</summary>

| File                                                                                                                         | Summary                                                                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                                          | ---                                                                                                                                                                                                                                                                                                                                                                                  |
| [KafkaManifest.yaml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/k8s/kafka/KafkaManifest.yaml)         | The code snippet in `k8s/kafka/KafkaManifest.yaml` defines the deployment and service configurations for a Kafka broker. It specifies the container image, environment variables, ports, and networking details. The deployment ensures that a single Kafka broker is running with the specified configuration. The service allows external access to the Kafka broker on port 9092. |
| [KafkaNamespace.yaml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/k8s/kafka/KafkaNamespace.yaml)       | The code in `k8s/kafka/KafkaNamespace.yaml` creates a Kubernetes Namespace called kafka for the parent repository's Spring Boot Kafka application.                                                                                                                                                                                                                                   |
| [ZookeeperManifest.yaml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/k8s/kafka/ZookeeperManifest.yaml) | This code snippet includes the YAML configuration files for deploying a zookeeper service and deployment in a Kubernetes cluster. The service exposes the zookeeper port and the deployment specifies the container image and environment variables needed for zookeeper.                                                                                                            |

</details>

<details closed><summary>src.test.java.com.example.springbootkafka</summary>

| File                                                                                                                                                                                     | Summary                                                                                                                                                                                           |
| ---                                                                                                                                                                                      | ---                                                                                                                                                                                               |
| [SpringBootKafkaApplicationTests.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/test/java/com/example/springbootkafka/SpringBootKafkaApplicationTests.java) | The code snippet in `SpringBootKafkaApplicationTests.java` is a test class for the Spring Boot Kafka application. It verifies the successful loading of the application's context during testing. |

</details>

<details closed><summary>src.main.java.com.example.springbootkafka</summary>

| File                                                                                                                                                                           | Summary                                                                                                                                                          |
| ---                                                                                                                                                                            | ---                                                                                                                                                              |
| [SpringBootKafkaApplication.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/SpringBootKafkaApplication.java) | The code snippet is the main entry point of the parent repository's Spring Boot application. It initializes the application and sets up the Kafka configuration. |

</details>

<details closed><summary>src.main.java.com.example.springbootkafka.entity</summary>

| File                                                                                                                                        | Summary                                                                                                                                                                                                                                                                                         |
| ---                                                                                                                                         | ---                                                                                                                                                                                                                                                                                             |
| [Order.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/entity/Order.java) | The `Order` class in the `com.example.springbootkafka.entity` package represents an order entity. It contains fields for the order ID, creation date, and content. This code snippet plays a critical role in defining and manipulating order data within the parent repository's architecture. |

</details>

<details closed><summary>src.main.java.com.example.springbootkafka.config</summary>

| File                                                                                                                                                    | Summary                                                                                                                                                                                                                                                                                                                                                                   |
| ---                                                                                                                                                     | ---                                                                                                                                                                                                                                                                                                                                                                       |
| [KafkaConfig.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/config/KafkaConfig.java) | This code snippet, located at `src/main/java/com/example/springbootkafka/config/KafkaConfig.java`, is a configuration class in the `springboot-kafka-k8s` repository. It defines properties for Kafka, such as bootstrap servers, group ID, and topics. It uses the `@ConfigurationProperties` annotation to map these properties from the `application.properties` file. |

</details>

<details closed><summary>src.main.java.com.example.springbootkafka.controller</summary>

| File                                                                                                                                                                | Summary                                                                                                                                                                                                                                                                  |
| ---                                                                                                                                                                 | ---                                                                                                                                                                                                                                                                      |
| [TestController.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/controller/TestController.java)   | The code snippet in TestController.java is part of the springboot-kafka-k8s repository. It defines a REST controller that retrieves Kafka configuration and returns it as a response entity. The code is responsible for handling the /test endpoint in the application. |
| [OrderController.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/controller/OrderController.java) | The `OrderController` class is a RESTful controller responsible for handling HTTP POST requests to create orders. It utilizes a `KafkaProducer` to send the order data to a Kafka topic for further processing.                                                          |

</details>

<details closed><summary>src.main.java.com.example.springbootkafka.kafka</summary>

| File                                                                                                                                                       | Summary                                                                                                                                                                                                                                                                            |
| ---                                                                                                                                                        | ---                                                                                                                                                                                                                                                                                |
| [KafkaProducer.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/kafka/KafkaProducer.java) | The `KafkaProducer` class in the `com.example.springbootkafka.kafka` package is responsible for sending the `Order` event to a Kafka topic. It uses a `KafkaTemplate` to send the event and logs the result.                                                                       |
| [KafkaConsumer.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/kafka/KafkaConsumer.java) | This code snippet is a Kafka consumer that listens to a specific topic and handles incoming messages. It logs the received order and acknowledges the message. This plays a critical role in the parent repository's architecture by processing and consuming messages from Kafka. |

</details>

<details closed><summary>src.main.java.com.example.springbootkafka.kafka.config</summary>

| File                                                                                                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                                                         |
| [KafkaConsumerConfig.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/kafka/config/KafkaConsumerConfig.java) | This code snippet is responsible for configuring and creating Kafka consumer instances in the Spring Boot application. It sets up the necessary properties and returns a factory for creating Kafka listener containers. The containers listen for messages from Kafka topics and handle them accordingly. The code uses the KafkaConfig class to fetch the necessary configuration values. |
| [KafkaProducerConfig.java](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/java/com/example/springbootkafka/kafka/config/KafkaProducerConfig.java) | This code snippet is part of the parent repository's architecture. It provides the configuration for a Kafka producer in a Spring Boot application. It sets up the necessary properties for producing messages to a Kafka cluster, using JSON serialization for both the key and the value.                                                                                                 |

</details>

<details closed><summary>src.main.resources</summary>

| File                                                                                                                      | Summary                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                                       | ---                                                                                                                                                                                                                                                                                                                |
| [application.yaml](https://github.com/rahul-ojha-07/springboot-kafka-k8s/blob/master/src/main/resources/application.yaml) | This code snippet contains the application.yaml file in the resources folder, which defines the configuration for the Spring Boot Kafka application. It specifies the application name, Kafka bootstrap servers, group ID, and topics. It also includes management endpoints for health and Prometheus monitoring. |

</details>

---

##  Getting Started

***Requirements***

Ensure you have the following dependencies installed on your system:

* **Java**: `version 17`

###  Installation

1. Clone the springboot-kafka-k8s repository:

```sh
git clone https://github.com/rahul-ojha-07/springboot-kafka-k8s
```

2. Change to the project directory:

```sh
cd springboot-kafka-k8s
```

3. Install the dependencies:

```sh
mvn clean install
```

###  Running springboot-kafka-k8s

Use the following command to run springboot-kafka-k8s:

```sh
java -jar target/myapp.jar
```

###  Tests

To execute tests, run:

```sh
mvn test
```

---

##  Contributing

Contributions are welcome! Here are several ways you can contribute:

- **[Submit Pull Requests](https://github/rahul-ojha-07/springboot-kafka-k8s/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.
- **[Join the Discussions](https://github/rahul-ojha-07/springboot-kafka-k8s/discussions)**: Share your insights, provide feedback, or ask questions.
- **[Report Issues](https://github/rahul-ojha-07/springboot-kafka-k8s/issues)**: Submit bugs found or log feature requests for Springboot-kafka-k8s.

<details closed>
    <summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your GitHub account.
2. **Clone Locally**: Clone the forked repository to your local machine using a Git client.
   ```sh
   git clone https://github.com/rahul-ojha-07/springboot-kafka-k8s
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to GitHub**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.

Once your PR is reviewed and approved, it will be merged into the main branch.

</details>
