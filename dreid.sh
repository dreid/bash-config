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
    env
    aliases
    sshkeys
    mochi
)

pushd ~/.bash.d/dreid > /dev/null
for file in ${FILES[*]}; do
    START_TIME=$(date +%s)
    echo -ne "Loading ${file}..."
    pad " " $((53 - ${#file}))
    source "${file}.sh" && \
        echo -ne "${BLDGRN}\xe2\x98\x80" || \
        echo -ne "${BLDRED}\xe2\x98\x81"

    echo -e "${TXTRST} [$(($(date +%s) - START_TIME))s]"
done

popd > /dev/null

export PATH
