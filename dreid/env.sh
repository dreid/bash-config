WORKON_HOME=~/.virtualenvs

mkdir -p $WORKON_HOME

PATH=~/.rbenv/bin:~/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

## rbenv

RBENV=$(type -p rbenv)

if [[ $RBENV != "" ]]; then
    eval "$(rbenv init -)";
fi

export PATH WORKON_HOME
