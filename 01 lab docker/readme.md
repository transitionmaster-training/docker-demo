# <font color="red">Transition</font>

# Docker Learning a hands-on lab for beginner.

This lab will cover the basics of Docker, including creating Docker containers, managing images, and running containers. 

**Lab Title: Introduction to Docker**

**Objective:**
By the end of this lab, you should be able to:
1. Understand the basic concepts of Docker.
2. Create Docker images.
3. Run Docker containers.
4. Manage Docker containers and images.

**Prerequisites:**
- Basic understanding of Linux commands.
- Docker installed on your machine.

**Lab Steps:**

**Step 1: Install Docker**
If you haven't already installed Docker, you can follow the official installation guide for your operating system: [Docker Installation Guide](https://docs.docker.com/get-docker/)

**Step 2: Verify Docker Installation**
After installation, verify that Docker is installed correctly by running the following command in your terminal or command prompt:
```console
docker --version
```
You should see the version of Docker installed on your system.

**Step 3: Pulling a Docker Image**
Let's start by pulling a Docker image from the Docker Hub repository. For this lab, we'll pull the official nginx image:
```console
docker pull nginx
```
This command downloads the latest nginx image from Docker Hub to your local machine.

**Step 4: Running a Docker Container**
Now that we have the nginx image, let's run a container based on this image:
```console
docker run -d -p  9090:80 nginx
```
This command starts a new Docker container based on the nginx image in detached mode (-d) and maps port 9090 on your host machine to port 80 on the container.

**Step 5: Accessing the Container**
Open your web browser and navigate to http://localhost:9090. You should see the default nginx welcome page, indicating that the container is running successfully.

**Step 6: Managing Docker Containers**
You can view the list of running containers using the following command:
```console
docker ps
```
To get into a running container, you can use the
```console
docker exec -it <mycontainer> bash
```

Tasks
- Get the Configuration File content. nginx config file location: /etc/nginx/nginx.conf

To stop a running container, you can use the `docker stop` command followed by the container ID or name:
```console
docker stop <container_id or container_name>
```

**Step 7: Creating a Dockerfile**
Now, let's create our own Docker image using a Dockerfile. Create a file named `Dockerfile` in a directory of your choice and add the following content:
```Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html
```
This Dockerfile uses the nginx base image and copies an `index.html` file into the container's web server directory.

**Step 8: Building a Docker Image**
In the same directory as your Dockerfile, create an `index.html` file with some simple HTML content. Then, build your Docker image using the following command:
```console
docker build -t my-nginx .
```
This command builds a Docker image tagged as `my-nginx` based on the Dockerfile in the current directory (`.`).

**Step 9: Running a Container from the Custom Image**
Now that we have our custom Docker image, let's run a container based on it:
```console
docker run -d -p 8080:80 my-nginx
```
This command starts a container based on the `my-nginx` image, similar to the previous nginx container, but this time serving the custom `index.html` content.

**Step 10: Cleaning Up**
Once you're done experimenting, you can stop and remove containers using the `docker stop` and `docker rm` commands, respectively. You can also remove Docker images using the `docker rmi` command.

Congratulations! You've completed the Docker hands-on lab. This should give you a good starting point for understanding Docker basics.