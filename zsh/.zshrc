## PATH TO OH MY ZSH ##

export ZSH="$HOME/.oh-my-zsh"

## PLUGINS ##
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

## STARSHIP ##

eval "$(starship init zsh)"

## ALIAS ##
alias vim="nvim"
alias ll="ls -al"
alias neofetch="fastfetch"
