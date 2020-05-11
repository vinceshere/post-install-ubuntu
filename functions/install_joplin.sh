#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                            Starting Joplin install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(ls -la ~ | grep -c "joplin") -eq 0 ]
then
    echo "- Running external Joplin script:"
    wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
    echo "Joplin installed!"
    echo ""
else
    echo "Joplin already installed!"
    echo ""
fi
