!/bin/bash

# Prereqs and docker
sudo apt-get update &&
    sudo apt-get install -yqq \
         curl \
         git \
         apt-transport-https \
         ca-certificates \
         gnupg-agent

# Install Docker repository and keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable" &&
    sudo apt-get update &&
    sudo apt-get install -yqq \
         docker-ce \
         docker-ce-cli \
         containerd.io \
         docker-compose-plugin

# wirewall
git clone https://github.com/nvucinic/wirewall.git &&
    cd wirewall &&
    docker compose up -d
