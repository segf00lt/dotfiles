# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Otherwise start tmux
#[[ -z "$TMUX" ]] && exec tmux

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias cl='clear'
alias py='python3'
alias nb='newsboat'

export PATH="/home/joao/.local/bin:$PATH"
alias config='/usr/bin/git --git-dir=/home/joao/dotfiles --work-tree=/home/joao'
alias shutdown="shutdown now"
alias fetch="neofetch"
export EDITOR="nvim"
export VISUAL="nvim"
