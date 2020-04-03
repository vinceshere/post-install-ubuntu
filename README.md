# Ubuntu post-install script
Script made to be running in fresh Ubuntu installs (tested on 19.10).

This script installs:
- [Google Chrome](https://www.google.com/chrome/);
- [Docker with docker-compose](https://www.docker.com/);
- [NVM](https://github.com/nvm-sh/nvm);
- [Slack](https://slack.com/);
- [Spotify](https://www.spotify.com/);
- [VSCode](https://code.visualstudio.com/);
- [Insomnia](https://insomnia.rest/);
- [Tilix](https://gnunn1.github.io/tilix-web/), [ZSH](http://www.zsh.org/) and [Antigen](https://github.com/zsh-users/antigen).

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

## Terminal
Will be installed using ZSH as shell and Antigen for plugins management (using OhMyZsh).
Tilix was my choice as default terminal.
- 2 files will be copied to your home folder: `.zshrc` and `.antigenrc`