Based on the Docker [getting-started To Do app](https://docs.docker.com/get-started/02_our_app/)

This is a simple NodeJs to-do app with SQLite backend

# Docker build, run, stop, remove
```
docker build -t hello-docker-todo .
docker run -dp 3000:3000 hello-docker-todo
or 
docker run -dp 80:3000 hello-docker-todo
docker ps
docker stop <container-id>
docker rm <container-id>  
# or force remove
docker -f rm <container-id>
for details:
docker inspect <container-id>
```
e.g. docker run -dp 80:3000 hello-docker-todo yielded:

            "Ports": {
                "3000/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "80"
                    }
                ]
            },

whereas docker run hello-docker-todo yields:

            "Ports": {
                "3000/tcp": null
            },

# copying docker image from windows to debian

install docker
```sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now
```
save
```
docker save -o <path for generated tar file> <image name>
docker save -o hello-docker-todo.tar hello-docker-todo
```
After transfer to linux:
```
docker load -i <path to image tar file>
docker load -i  hello-docker-todo.tar 
```

# To push to AWS Lightsail:

* aws configure
    * AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
    * AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
    * Default region name [None]: us-west-2
    * Default output format [None]: json

* docker images
  -> **hello-docker-todo        latest**    35ef183fe1e6   
* aws lightsail push-container-image --region us-west-2 --service-name docker --label hello-docker-todo --image hello-docker-todo:latest


![Lightsail Deployment](doc/images/lightsail-deployment.png?raw=true "Lightsail Deployment")