# Ubuntu post-install script
Script made to be running in fresh Ubuntu installs (tested on 19.10).

## Packages list:

### Dev Tools
- [NVM](https://github.com/nvm-sh/nvm);
- [Docker with docker-compose](https://www.docker.com/);
- [Toggl](https://toggl.com/);
- [Insomnia](https://insomnia.rest/);
- [VSCode](https://code.visualstudio.com/);

### Productivity
- [Google Chrome](https://www.google.com/chrome/);
- [Discord](https://discord.com/);
- [Joplin](https://joplinapp.org/);
- [Slack](https://slack.com/);
- [Spotify](https://www.spotify.com/);
- [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/), [ZSH](http://www.zsh.org/) and [Antigen](https://github.com/zsh-users/antigen).

### Ubuntu packages
- curl
- wget
- curl
- git
- zsh
- vim
- terminator
- make
- audacity
- inkscape
- blender
- gimp
- ubuntu-restricted-extras
- software-properties-common
- apt-transport-https wget
- ca-certificates
- gnupg-agent
- make
- autojump
- ruby
- cowsay
- fortune
- figlet
- lolcat
- chrome-gnome-shell

## Running
First of all, clone this repository.

Access the folder and give the main file on root `script.sh` permission to be executed and run it with:

```
$ chmod +x script.sh
$ ./script.sh
```

or

```
$ chmod +x script.sh
$ sudo sh script.sh
```

## VSCode
Will be installed with the following extensions:
- Docker
- Dotenv
- Editorconfig
- Eslint
- Gitlens
- Prettier
- Terraform
- TSLint
- Sort Lines

## Terminal
Will be installed using ZSH as shell and Antigen for plugins management (using OhMyZsh).
Terminator was my choice as default terminal since it allows panel splitting.
Also, it adds a populated `.zshrc` with a helper for `NVM`, which allows automatically Node.js version switch on folder navigation.
