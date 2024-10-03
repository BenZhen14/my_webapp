#!/bin/bash
# Update yum and install Docker
sudo yum update -y
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker

# # Reload Systemd, enable/start/status of Docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

# Pull docker image, build and run it
docker pull nguyb/web_app
docker build -t web_app:lite .
docker run -d --name web_app -p 80:80 web_app/web_app:lite