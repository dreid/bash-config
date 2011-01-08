/usr/bin/ssh-add -l >& /dev/null

if [[ $? != 0 ]]; then
    ssh-add
fi

true
