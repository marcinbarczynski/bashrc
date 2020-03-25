# https://askubuntu.com/a/22417
PROMPT_COMMAND="${PROMPT_COMMAND:+"${PROMPT_COMMAND}; "}"'echo -ne "\033]0;${HOSTNAME}: ${PWD/${HOME}/"~"}\007"'
