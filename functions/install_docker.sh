#!/bin/bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                                 Install docker:                                '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(sudo cat /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -c "docker") -eq 0 ]
then
    echo "Adding Docker PPA key:"
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    echo ''

    echo "Adding PPA:"
    sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
    echo ''

    echo "Installing:"
    sudo apt-get update
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io

    echo "Adding user to docker group:"
    sudo usermod -aG docker $USER
    echo ''

    echo "Reestarting session:"
    sudo su $USER
    echo ''

    echo "Installing docker-compose:"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo ''
else
    echo "Docker already exists"
    echo ''
fi