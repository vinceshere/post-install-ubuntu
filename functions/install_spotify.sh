#!/bin/bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                             Starting Spotify install                           '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(sudo cat /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -c "spotify") -eq 0 ]
then
    echo "Adding Spotify PPA key:"
    curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
    echo ''

    echo "Adding PPA:"
    sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
    echo ''

    echo "Installing:"
    sudo apt-get install -y spotify-client

    echo "Finished installing Spotify"
    echo ''
else
    echo "Spotify already exists"
    echo ''
fi