function __print_if_not_zero {
    if [ $1 -ne 0 ]; then
        printf "%s " $1
    fi
}

RED=$'\033[1;31m'
NO_COLOR=$'\033[m'
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='[\[${RED}\]$(__print_if_not_zero $?)\[${NO_COLOR}\]$(date +%k:%M:%S)|\u@\h$(__git_ps1 " (%s)") \W] \$ '
