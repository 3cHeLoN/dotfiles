. $XDG_CONFIG_HOME/aliasrc
. $HOME/.local/bin/git-completion.bash
. $HOME/.local/bin/git-prompt.sh

# autocd
shopt -s autocd

# enable autojump
source /etc/profile.d/autojump.bash
eval `dircolors $HOME/.dircolors/dircolors.ansi-universal`

# set vi mode
set -o vi

# do not overwrite files
set -o noclobber

# build the PS1 variable
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 4)\]"
PURPLE="\[$(tput setaf 5)\]"
RESET="\[$(tput sgr0)\]"

PS1="[${GREEN}\u${RESET}"
PS1+="@"
PS1+="${BLUE}\h${RESET}"
PS1+=" ${PURPLE}\w${RESET}"
#PS1+="${RED}$(__git_ps1 ' (%s)')${RESET}"
PS1+="${RED}"
PS1+='$(__git_ps1 " (%s)")'
PS1+="${RESET}"
PS1+="]\$ "

export PS1

# add color
xcalib -d :0 $HOME/Documents/Gaming-Movie-Nights-LP156WF6-SPB5.icm

# start fish
if [ -z "$BASH_EXECUTION_STRING" ]; then exec fish; fi
