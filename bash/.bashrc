source $XDG_CONFIG_HOME/aliasrc
source $HOME/.local/bin/git-completion.bash
source $HOME/.local/bin/git-prompt.sh
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# autocd
shopt -s autocd

# enable autojump
source /etc/profile.d/autojump.bash

# set vi mode
#set -o vi

bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'

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
if [ -z "$BASH_EXECUTION_STRING" ]; then exec fish; fi
