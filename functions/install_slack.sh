#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                            Starting Slack install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which slack | grep -c "slack") -eq 0 ]
then
    echo "- Downloading:"
    wget https://downloads.slack-edge.com/releases/linux/4.19.2/prod/x64/slack-desktop-4.19.2-amd64.deb -P "$PWD/temp"
    echo ''
    echo "- Installing:"
    sudo dpkg -i "$PWD/temp/slack-desktop-4.19.2-amd64.deb"
    echo "- Finished installing Slack!"
else
    echo "Slack already exists"
    echo ''
fi
