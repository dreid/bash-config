ALT_HOST_COLOR_BASES=(
    "0;32m" # Green
    "0;36m" # Cyan
    "0;35m" # Purple
    "0;33m" # Brown
    "1;30m" # Dark Gray
    "1;32m" # Light Green
    "1;36m" # Light Cyan
    "1;35m" # Light Purple
);

HOST_COLOR="\e[1;31m";
USER_COLOR="\e[1;34m";
NO_COLOR="\e[0m";

case $TERM in
    xterm*)
            TITLE_STRING="\[\033]0;\u@\h:\w \$(__git_ps1 \" (%s)\")\007\]"
            ;;
    *)
            TITLE_STRING=''
            ;;
esac

if [[ -n "${SSH_CONNECTION}" ]]; then
    hash=$(python -c "print abs(hash(\"${HOSTNAME}\"))")
    base=$(expr ${hash} % ${#ALT_HOST_COLOR_BASES})
    HOST_COLOR="\e[${ALT_HOST_COLOR_BASES[${base}]}"
fi

PS1="${TITLE_STRING}${HOST_COLOR}\h ${USER_COLOR}\u${NO_COLOR}:\W\$(__git_ps1 \" (%s)\")> "
