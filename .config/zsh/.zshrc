autoload -U colors && colors
# Set prompt colors
PS1="%B%{$fg[green]%}%n%{$fg[green]%}@%{$fg[green]%}%M%{$fg[white]%}:%{$fg[blue]%}%~%B%{$fg[white]%}$%b "

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list ''

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000000
SAVEHIST=10000000
setopt autocd extendedglob notify
unsetopt beep
bindkey -e
export KEYTIMEOUT=1
# End of lines configured by zsh-newuser-install

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

echo -ne '\e[5 q' # Use beam shape cursor on startup.
precmd() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Useful aliases and other stuff
alias py='python3'
alias nb='newsboat'
alias ls='ls --color=auto'
alias la='ls -la'
alias cy='cal -y'
alias ffprobe='ffprobe -hide_banner'
alias ffplay='ffplay -hide_banner'
alias ffmpeg='ffmpeg -hide_banner'
alias vi='nvim'
alias tmux='tmux -2'
alias pactree='pactree -c'
alias sc='mc -s'
alias pc='mc -b'
alias lynx='lynx -vikeys'
alias mpv='mpv --force-window=immediate'
alias config='/usr/bin/git --git-dir=/home/joao/.config/dotfiles --work-tree=$HOME'
alias grep='grep --color'

export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"
export PATH="$PATH:${$(find ~/.local/share/go/bin -type d -printf %p:)%%:}"
export PATH="$PATH:${$(find ~/cosmocc/bin -type d -printf %p:)%%:}"
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="brave"
export TERM="xterm"
export GTK_THEME=Adwaita:dark
export OCL_ICD_FILENAMES="libintelocl_emu.so:libalteracl.so:/opt/intel/inteloneapi/compiler/latest/linux/lib/x64/libintelocl.so"

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
	tmp="$(mktemp)"
	lf -single -last-dir-path="$tmp" "$@"
	if [ -f "$tmp" ]; then
		dir="$(cat "$tmp")"
		rm -f "$tmp" >/dev/null
		[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
	fi
}
bindkey -s '^o' 'lfcd\n'

# Load syntax highlighting; should be last.
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

