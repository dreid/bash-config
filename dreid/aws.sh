function aws {
    if [[ -d ~/.aws/$1 ]]; then
        for file in $(ls ~/.aws/$1/); do
            export $file=$(cat ~/.aws/$1/$file);
        done;
    fi;
}