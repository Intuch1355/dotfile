## PATH TO OH MY ZSH ##

export ZSH="$HOME/.oh-my-zsh"

## PLUGINS ##
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

## STARSHIP ##

eval "$(starship init zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/nathan/.lmstudio/bin"
# End of LM Studio CLI section

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

## ALIAS ##
alias vim="nvim"
alias ll="ls -al"
alias neofetch="fastfetch"
alias syu="brew update && brew upgrade && brew cleanup"
