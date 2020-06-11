#!/bin/bash

if [ "$TMUX" = "" ]; then tmux; fi

source ~/.aliases

# ZSH config
export ZSH="/home/forest/.oh-my-zsh"
ZSH_THEME="ys"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git docker)
source $ZSH/oh-my-zsh.sh

# Python
export PATH="$HOME/.poetry/bin:/home/forest/.pyenv/bin:$PATH"
export PATH="$HOME/software:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Deno
export DENO_INSTALL="/home/forest/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
h=()
if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
if [[ -r ~/.ssh/known_hosts ]]; then
  h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
fi
if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:ssh:*' hosts $h
  zstyle ':completion:*:slogin:*' hosts $h
fi

# Aliases that probably don't work
alias pth="echo \"export PATH=\$PATH:\$(pwd)\" >> ~/.zshrc; PATH=\$PATH:\$(pwd)"

# Binaries
export PATH="$HOME/Documents/binaries:$PATH"
