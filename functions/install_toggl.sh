#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                            Starting Toggl install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which TogglDesktop.sh | grep -c "Toggl") -eq 0 ]
then
    echo "- Downloading:"
    dest=$PWD/temp
    mkdir $dest
    url=$(curl -fs 'https://toggl-open-source.github.io/toggldesktop/download/linux_deb64-stable/' | \
        gawk -v \
        'RS=http-equiv="[rR]efresh" *content="[0-9 ;]*[uU][rR][lL]=' \
        -F '"' \
        '/^http/{print $1;exit}')
    wget -O $dest/toggl.deb $url
    echo ''
    echo "- Installing:"
    sudo dpkg -i "$PWD/temp/toggl.deb"
    echo "- Finished installing Toggl!"
else
    echo "Toggl already exists"
    echo ''
fi
