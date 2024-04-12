
# <font color="red">Transition</font>

# Example Voting App

This is a simple distributed application running across multiple Docker containers.

## Overview

The Example Voting App consists of the following components:

![](../images/voting-app-architecture.png)

- **Front-end Web App (Python)**: 
  - Allows users to vote between two options.
  - Restricts one vote per client browser.

- **Redis**: 
  - Collects and stores new votes.

- **.NET Worker**: 
  - Consumes votes and stores them.

- **Postgres Database**:
  - Backed by a Docker volume.
  - Stores voting data.

- **Node.js Web App**: 
  - Displays real-time results of the voting.
  
## Getting Started

To get started with the Example Voting App, follow these steps:

1. **Download Docker Desktop**: 
   - For Mac or Windows, download Docker Desktop from [here](https://www.docker.com/products/docker-desktop). Docker Compose will be automatically installed.
   - On Linux, ensure you have the latest version of Docker Compose installed.

2. **Run application:** 
    Please follow the Docker compose below to launch the microservice application.

3. **Docker Compose:**
    ```console
    docker compose up
    ```
 
## Notes

- This application utilizes Python, Node.js, .NET, Redis for messaging, and Postgres for storage.
- It's important to note that this isn't an example of a perfectly architected distributed app. Rather, it demonstrates various components and languages you might encounter in a distributed application, such as queues and persistent data, and how to manage them using Docker at a basic level.

