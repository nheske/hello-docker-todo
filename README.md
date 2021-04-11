
docker build -t hello-docker-todo .
docker run -dp 3000:3000 hello-docker-todo
docker ps
docker stop <pid>
docker rm <pid>  
or force remove
docker -f rm <pid>

* copying docker image from windows to debian
* install docker
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now
docker

docker commit NAME_OF_INSTANCE mycontainerimage
docker commit hello-docker-todo hello-docker-todo-image
docker save hello-docker-todo | gzip > hello-docker-todo.tar.gz
