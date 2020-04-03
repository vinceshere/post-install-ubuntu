#!/bin/bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                            Starting NVM install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which nvm | grep -c "nvm") -eq 0 ]
then
    echo "- Running external NVM script:"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    echo "NVM installed!"
    echo ""
else
    echo "NVM already installed!"
    echo ""
fi