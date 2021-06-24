#!/bin/bash

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Keyboard Layout
setxkbmap us &

#VirtualBox VMSVGA
#VBoxClient --vmsvga

#Disable screensaver
xset s off && xset -dpms

#Display Res
#xrandr --output Virtual-1 --mode 1360x768 &

#Compositor
picom &

#Wallpaper
#nitrogen --restore &
/home/joao/.fehbg &

# Color Scheme
wal -R &

#Redshift
redshift &

# Themes
export QT_STYLE_OVERRIDE=adwaita

#Loop
while true; do
	dwm >/dev/null 2>&1
done

#Execute DWM
exec dwm

