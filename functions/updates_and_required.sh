#!/bin/bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                   Updating repositories list and upgrading:                    '
echo '#------------------------------------------------------------------------------#'
echo ''
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y