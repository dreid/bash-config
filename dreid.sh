function pad {
    char=$1
    n=$2

    printf -v f "%${n}s" ; printf "%s" "${f// /${char}}"
}

FILES=(
    colors
    shopts
    git
    prompt
    aliases
    sshkeys
    mochi
)

pushd ~/.bash.d/dreid > /dev/null
for file in ${FILES[*]}; do
    START_TIME=$(date +%s)
    echo -ne "Loading ${file}..."
    pad " " $((50 - ${#file}))
    source "${file}.sh" && \
        echo -ne "${BLDGRN}  OK" || \
        echo -ne "${BLDRED}FAIL"

    echo -e "${TXTRST} [$(($(date +%s) - START_TIME))s]"
done

popd > /dev/null

export PATH
