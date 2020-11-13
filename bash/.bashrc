. $XDG_CONFIG_HOME/aliasrc

# autocd
shopt -s autocd

# enable autojump
source /etc/profile.d/autojump.bash

# set vi mode
set -o vi

# do not overwrite files
set -o noclobber

# build the PS1 variable
GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 4)\]"
PURPLE="\[$(tput setaf 5)\]"
RESET="\[$(tput sgr0)\]"

PS1="[${GREEN}\u${RESET}"
PS1+="@"
PS1+="${BLUE}\h${RESET}"
PS1+=" ${PURPLE}\w${RESET}]"
PS1+="\$ "
export PS1
