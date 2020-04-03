#!/bin/bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                               Setting terminal                                 '
echo '#------------------------------------------------------------------------------#'
echo ''

echo $PWD

echo "- Setting .zshrc as the default shell:"
sudo usermod --shell $(which zsh) $USER
echo ""

echo "- Setting Tilix as the default terminal:"
gsettings set org.gnome.desktop.default-applications.terminal exec 'tilix'
echo ""

echo "Installing Antigen:"
curl -L git.io/antigen > ~/antigen.zsh
echo ""

echo "- Copying .zshrc to home folder:"
rm -rf ~/.zshrc
cp -f $PWD/dotfiles/.zshrc ~/.zshrc
echo ""

echo "- Copying .antigenrc to home folder:"
rm -rf ~/.antigenrc
cp -f $PWD/dotfiles/.antigenrc ~/.antigenrc
echo ""