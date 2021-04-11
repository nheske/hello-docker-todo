# Based on the Docker [getting-started To Do app](https://docs.docker.com/get-started/02_our_app/)


# Docker build, run, stop, remove

docker build -t hello-docker-todo .
docker run -dp 3000:3000 hello-docker-todo
docker ps
docker stop <pid>
docker rm <pid>  
or force remove
docker -f rm <pid>

# copying docker image from windows to debian

* install docker
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now
* save
docker save -o <path for generated tar file> <image name>
docker save -o hello-docker-todo.tar hello-docker-todo
*After transfer to linux:
docker load -i <path to image tar file>
docker load -i  hello-docker-todo.tar 