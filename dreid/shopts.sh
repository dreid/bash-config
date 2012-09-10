shopt -s checkwinsize
shopt -s histappend

PROMPT_COMMAND="history -a"

HISTIGNORE="&:[ ]*:exit:ls"

export HISTIGNORE
