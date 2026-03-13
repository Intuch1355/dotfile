# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(zsh-autosuggestions sudo web-search copypath copyfile)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

# starship
eval "$(starship init zsh)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# alias
# alias vim='nvim'
alias cat='bat'
alias ls='lsd'
alias ll='lsd -al'
alias wget='aria2c'
alias neofetch='fastfetch'
alias wal='wal --cols16 -i'
