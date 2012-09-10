if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

for f in $(find ./completions.d -type f); do
    . $f;
done
