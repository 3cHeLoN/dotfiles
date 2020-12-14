export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib:/usr/local/lib
export PATH=$PATH:$HOME/.local/bin

# Default programs
export EDITOR=nvim
export TERMINAL=st
export BROWSER=brave
export READER=zathura

# clean up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

# visuals
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djdk.gtk.version=2'
export QT_QPA_PLATFORMTHEME='qt5ct'
export _JAVA_AWT_WM_NONREPARENTING=1

# Wine
export WINEARCH=win32

# Fix config dirs
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export KDEHOME="$XDG_CONFIG_HOME"/kde
export ZDOTDIR=$HOME/.config/zsh

if [[ -z "${DISPLAY}" ]] && [[ "${XDG_VTNR}" -eq 1 ]]; then
  exec startx
fi

source $HOME/.bashrc
