WORKON_HOME=~/.virtualenvs

mkdir -p $WORKON_HOME

PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH=~/.rbenv/bin:~/bin:$PATH

EDITOR="subl -w"

## rbenv

RBENV=$(type -p rbenv)

if [[ $RBENV != "" ]]; then
    eval "$(rbenv init -)";
fi

export PATH WORKON_HOME EDITOR

source /usr/local/bin/virtualenvwrapper.sh
