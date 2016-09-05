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

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
