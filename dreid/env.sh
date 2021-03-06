WORKON_HOME=~/.virtualenvs

mkdir -p $WORKON_HOME

PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH=~/Library/Python/2.7/bin:$PATH
PATH=~/.rbenv/bin:~/bin:$PATH

EDITOR="subl -w"

## rbenv

RBENV=$(type -p rbenv)

if [[ $RBENV != "" ]]; then
    eval "$(rbenv init -)";
fi

export PATH WORKON_HOME EDITOR

source ~/Library/Python/2.7/bin/virtualenvwrapper.sh
