#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                            Starting Discord install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which discord | grep -c "discord") -eq 0 ]
then
    echo "- Installing dependencies:"
    sudo apt install -y libappindicator1 libc++1
    echo ''
    echo "- Downloading:"
    dest=$PWD/temp
    mkdir $dest
    wget -O $dest/discord.deb 'https://discordapp.com/api/download?platform=linux&format=deb'
    echo ''
    echo "- Installing:"
    sudo dpkg -i "$PWD/temp/discord.deb"
    echo "- Finished installing Discord!"
else
    echo "Discord already exists"
    echo ''
fi
