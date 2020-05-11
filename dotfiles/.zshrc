# Load Antigen
source ~/antigen.zsh

# Init Antigen
antigen init $HOME/.antigenrc

# Made NVM available
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Aliases file
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi