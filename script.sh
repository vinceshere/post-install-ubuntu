#!/bin/bash
#
# Author:
#   Vicente Santos <https://v1nce.dev>
#
# Description:
#   A post-installation bash script for Ubuntu

#----- FUNCTIONS -----#

chmod -R +x $PWD/functions

sh $PWD/functions/intro.sh
sh $PWD/functions/updates_and_required.sh
sh $PWD/functions/install_main_packages.sh
sh $PWD/functions/install_vscode.sh
sh $PWD/functions/install_slack.sh
sh $PWD/functions/install_spotify.sh
sh $PWD/functions/set_terminal.sh
sh $PWD/functions/install_docker.sh
sh $PWD/functions/install_nvm.sh
sh $PWD/functions/install_chrome.sh
sh $PWD/functions/install_insomnia.sh
sh $PWD/functions/finish.sh

#END OF SCRIPT