#!/bin/sh

[ -f ~/.xprofile ] && . ~/.xprofile

xrdb -merge ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

systemctl --user import-environment DISPLAY

# switch caps key and esc key
setxkbmap -option caps:swapescape

xmodmap -e "keycode 108 = Super_L"  # reassign Alt_R to Super_L
xmodmap -e "remove mod1 = Super_L"  # make sure X keeps it out of the mod1 group

export AWT_TOOLKIT=MToolkit
while true; do
    # Log stderror to a file
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
