# python-docker
 Python application with docker

## All about DOCKER Image
# To build the docker Image use below command
docker build --tag python-docker .

# Once the Images is created without any error , list all the Images
docker images

# To tag the image from <Image_Name>:<Default_Tag> (i.e latest) to <Image_Name>:<New_Tag>
docker tag python-docker:latest python-docker:v1.0.0

## All about DOCKER container
A container is a normal operating system process except that this process is isolated in that it has its own file system, 
its own networking, and its own isolated process tree separate from the host.

# To run the Image inside a container ( or isolated env) use the below command
docker run python-docker

Container will start in isolation so localhost can't access the port internal to container it needs to be exposed.

To publish a port for our container, we’ll use the --publish flag (-p for short) on the docker run command. 
The format of the --publish command is [host port]:[container port]. 
So, if we wanted to expose port 5000 inside the container to port 3000 outside the container, 
we would pass 3000:5000 to the --publish flag.

docker run --publish 8000:5000 python-docker

To check if the port exposed and app is acessible use below command on separate terminal
command: curl localhost:8000 
output : Hello, Docker!%

# To run in detached mode
Basically the webserver should run in the background (-d is the option to run in detached mode)
commad : docker run -d -p 8000:5000 python-docker
output : <Container_Id> returned on the terminal

# Other helpful commands
a. To list all running containers - docker ps

b. To stop the container - docker stop <container_name>

c. To list all the running/stopped containers - docker ps -a

d. To restart a stopped container - docker restart <container_name>

e. To remove the containers - docker rm <container_name1> <container_name2> <container_name3>


