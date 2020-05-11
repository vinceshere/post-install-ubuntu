#!/usr/bin bash

echo ''
echo '#------------------------------------------------------------------------------#'
echo '                                 Add SSH keys                                   '
echo '#------------------------------------------------------------------------------#'
echo ''

echo "- Cleaning .ssh folder:"
rm -rf ~/.ssh

echo "- Copy .ssh folder whith keys to HOME:"
cp -r $PWD/dotfiles/.ssh/. ~/.ssh

echo "- Setting 700 permissions to .ssh folder:"
chmod 700 ~/.ssh

echo "- Setting 644 permissions to .ssh/config file:"
chmod 644 ~/.ssh/config

echo "- Setting 600 permissions to .ssh/vince key:"
chmod 600 ~/.ssh/vince

echo "- Setting 644 permissions to .ssh/vince.pub key:"
chmod 644 ~/.ssh/vince.pub

echo "- Setting 600 permissions to .ssh/vizir key:"
chmod 600 ~/.ssh/vizir

echo "- Setting 644 permissions to .ssh/vizir.pub key:"
chmod 644 ~/.ssh/vizir.pub


echo "- Getting ssh-agend PID:"
eval "$(ssh-agent -s)"

echo "- Adding vince key to keyring:"
ssh-add ~/.ssh/vince

echo "- Adding vizir key to keyring:"
ssh-add ~/.ssh/vizir

echo "Finished SSH settings!"
