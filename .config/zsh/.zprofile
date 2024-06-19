#
# ~/.profile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx -- -ardelay 185 -arinterval 30
fi
