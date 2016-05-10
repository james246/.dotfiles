export DOTFILESPATH=$HOME/.dotfiles

source $DOTFILESPATH/.aliases
source $DOTFILESPATH/.exports
source $DOTFILESPATH/.completions

fpath=(~/.zsh $fpath)
plugins=(git heroku)

ZSH_THEME="robbyrussell"

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
