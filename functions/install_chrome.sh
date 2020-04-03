#!/bin/bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                                 Install Chrome:                                '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which google-chrome | grep -c "chrome") -eq 0 ]
then
    echo "- Downloading:"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P "$PWD/temp"
    echo ''
    echo "- Installing:"
    sudo dpkg -i "$PWD/temp/google-chrome-stable_current_amd64.deb"
    echo "- Finished installing Chrome!"
else
    echo "Chrome already exists"
    echo ''
fi