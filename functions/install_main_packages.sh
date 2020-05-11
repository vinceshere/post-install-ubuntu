#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                             Installing main packages:                          '
echo '#------------------------------------------------------------------------------#'
echo ''
sudo apt install -y \
curl wget curl git zsh vim terminator make \
audacity inkscape blender gimp ubuntu-restricted-extras \
software-properties-common apt-transport-https wget \
ca-certificates gnupg-agent make autojump \
ruby cowsay fortune figlet lolcat chrome-gnome-shell
