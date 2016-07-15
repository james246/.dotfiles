export DOTFILESPATH=$HOME/.dotfiles

source $DOTFILESPATH/aliases
source $DOTFILESPATH/exports
source $DOTFILESPATH/completions

fpath=(~/.zsh $fpath)
plugins=(git heroku)

ZSH_THEME="robbyrussell"

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export NVM_DIR="/Users/jamespaterson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
