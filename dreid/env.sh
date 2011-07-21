WORKON_HOME=~/.virtualenvs

mkdir -p $WORKON_HOME

PATH=~/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
EDITOR=dtrt-emacs

NODE_PATH=/usr/local/lib/node

export PATH EDITOR WORKON_HOME NODE_PATH
