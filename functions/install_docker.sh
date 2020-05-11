#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                                 Install docker:                                '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(sudo cat /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -c "docker") -eq 0 ]
then
    echo "Installing Docker:"
    dest=$PWD/temp
    curl -fsSL https://get.docker.com -o $dest/get-docker.sh
    sudo sh $dest/get-docker.sh
    echo ''

    echo "Adding user to docker group:"
    sudo usermod -aG docker $USER
    echo ''

    echo "Installing docker-compose:"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo ''
else
    echo "Docker already exists"
    echo ''
fi
