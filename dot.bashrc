PS1="\u@\h>"
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

alias ll='/usr/bin/ls -lhtr --color=auto'
alias rm='rm -i'
#alias em='emacs -nw'

export COLOR_NC='\e[0m' # No Color                                                                                                       
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_PATH='\e[1;38;5;166m'
export COLOR_PROMPT='\e[0;38;5;63m'

#export PS1="\[${COLOR_LIGHT_RED}\]\w\n\[${COLOR_BROWN}\]\u@\h $ \[\033[0m\]"
export PS1="\[${COLOR_PATH}\]\w\n\[${COLOR_PROMPT}\]\u@\h $ \[\033[0m\]"

alias sprompt='export PS1="\u@\h>"'
alias cprompt='export PS1="\[${COLOR_LIGHT_RED}\]\w\n\[${COLOR_BROWN}\]\u@\h $ \[\033[0m\]"'
