#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                            Starting Insomnia install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which insomnia | grep -c "insomnia") -eq 0 ]
then
    echo "- Downloading:"
    dest=$PWD/temp
    mkdir $dest
    wget -O $dest/insomnia.deb 'https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website'
    echo ''
    echo "- Installing:"
    sudo dpkg -i $dest/insomnia.deb
    echo "- Finished installing Insomnia!"
else
    echo "Insomnia already exists"
    echo ''
fi
