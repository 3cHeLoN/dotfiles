#!/bin/sh
if [ -f "$HOME/.Xresources" ]; then
    mv $HOME/.Xresources $HOME/.Xresources_bak
elif [ -f "$HOME/.Xresources_bak" ]
then
    mv $HOME/.Xresources_bak $HOME/.Xresources 
fi

if [ -f "$HOME/.xinitrc" ]; then
    mv $HOME/.xinitrc $HOME/.xinitrc_bak
elif [ -f "$HOME/.xinitrc_bak" ]
then
    mv $HOME/.xinitrc_bak $HOME/.xinitrc 
fi

if [ -f "$HOME/.xprofile" ]; then
    mv $HOME/.xprofile $HOME/.xprofile_bak
elif [ -f "$HOME/.xprofile_bak" ]
then
    mv $HOME/.xprofile_bak $HOME/.xprofile 
fi
