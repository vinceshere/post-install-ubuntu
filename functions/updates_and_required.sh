#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                   Updating repositories list and upgrading:                    '
echo '#------------------------------------------------------------------------------#'
echo ''
mkdir $dest
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
