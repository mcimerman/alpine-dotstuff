#!/bin/bash

# solarized
#PS1='\[\033[00;31m\]\w \[\033[00m\]; ' # ORANGE

# zenburn
#PS1='\[\033[01;31m\]\w \[\033[00m\]; ' # PINK
#PS1='\[\033[01;33m\]\w \[\033[00m\]; ' # YELLOW
#PS1='\[\033[00;32m\]\w \[\033[00m\]; ' # GREEN
PS1='\[\033[01;30m\]\w \[\033[00m\]; ' # DARK GREEN


export PAGER=less
export EDITOR=nvim

alias ls='ls --color=auto'
alias ll='ls -lsah'
alias l='ls -ah'
alias '..'='cd ..'

alias 'spotify'='sh ~/.scripts/spotify'
alias 'monitor'='sh ~/.scripts/monitor'
alias 'brightness'='sh ~/.scripts/brightness'
alias 'suspend'='doas sh ~/.scripts/suspend'

alias sk='setxkbmap -layout sk -variant qwerty'
alias us='setxkbmap -layout us'

HISTSIZE=9999999
HISTFILE="/home/$USER/.bash_history"

stty werase undef
bind '\C-w:unix-filename-rubout'

shopt -s histappend
shopt -s cdspell

. "$HOME/.cargo/env"
