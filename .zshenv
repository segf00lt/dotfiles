#!/bin/zsh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
#export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"

export ZDOTDIR="$HOME/.config/zsh"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export LESSHISTFILE="-"
export XDG_DATA_HOME="$HOME/.local/share"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
