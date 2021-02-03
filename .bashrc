#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Otherwise start tmux
#[[ -z "$TMUX" ]] && exec tmux

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias str='startx' 
alias cl='clear'

export PATH="/home/joao/.local/bin:$PATH"
alias config='/usr/bin/git --git-dir=/home/joao/dotfiles --work-tree=/home/joao'
