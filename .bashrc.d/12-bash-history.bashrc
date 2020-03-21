# https://stackoverflow.com/questions/19454837/bash-histsize-vs-histfilesize
export HISTSIZE=10000
export HISTFILESIZE="${HISTSIZE}"
# export HISTTIMEFORMAT="%h %d %H:%M:%S "

# ignorespace doesn't add commands starting with space to history
export HISTCONTROL=ignorespace:erasedups

shopt -s histappend  # do not overwrite history at the end of the session
shopt -s cmdhist  # store multi-line commands in one history entry

# store history immediately
PROMPT_COMMAND="${PROMPT_COMMAND:+"${PROMPT_COMMAND}; "}history -a"
