#!/bin/bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                            Starting Insomnia install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which insomnia | grep -c "insomnia") -eq 0 ]
then
    echo "- Adding PPA:"
    echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
    echo ''
    echo "- Adding key to PPA:"
    wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
    echo "- Installing:"
    sudo apt-get update
    sudo apt-get install insomnia

    echo "- Finished installing Insomnia!"
else
    echo "Insomnia already exists"
    echo ''
fi