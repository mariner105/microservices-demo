!/bin/bash

# Restart Docker to have it listen on port 2376
sudo tail /etc/environment | grep 'DOCKER_HOST'

sudo systemctl stop docker
sudo dockerd -H tcp://127.0.0.1:2376 -H unix://var/run/docker.sock

sudo netstat -tunlp

sudo systemctl status docker
