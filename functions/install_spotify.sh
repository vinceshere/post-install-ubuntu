#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                             Starting Spotify install                           '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(sudo cat /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -c "spotify") -eq 0 ]
then
    echo "Adding Spotify PPA key:"
    curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
    echo ''

    echo "Adding PPA:"
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    echo ''

    echo "Installing:"
    sudo apt-get update && sudo apt-get install -y spotify-client

    echo "Finished installing Spotify"
    echo ''
else
    echo "Spotify already exists"
    echo ''
fi
