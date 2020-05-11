#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                           Starting VSCode install                              '
echo '#------------------------------------------------------------------------------#'
echo ''

if [ $(which code | grep -c "code") -eq 0 ]
then
    echo "- Adding VSCode key for Microsoft's PPA:"
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    echo ''

    echo "- Adding PPA:"
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    echo ''

    echo "- Installing:"
    sudo apt install -y code

    echo "- Installing VSCode extensions:"
    code --install-extension ms-azuretools.vscode-docker
    code --install-extension mikestead.dotenv
    code --install-extension editorconfig.editorconfig
    code --install-extension dbaeumer.vscode-eslint
    code --install-extension eamodio.gitlens
    code --install-extension prettier.prettier-vscode
    code --install-extension ms-vscode.vscode-typescript-tslint-plugin
    code --install-extension mauve.terraform
    code --install-extension tyriar.sort-lines

    echo "- Finished installing VSCode!"
    echo ''
else
    echo "- VSCode already exists."
    echo ''
fi
