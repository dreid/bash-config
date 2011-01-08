FILES=(
    colors
    shopts
    git
    prompt
)

pushd ~/.bash.d/dreid > /dev/null

for file in ${FILES[*]}; do
    START_TIME=$(date +%s)
    echo -ne "Loading ${file}...\t"
    source "${file}.sh" && \
        echo -ne "${BLDGRN}OK" || \
        echo -ne "${BLDRED}FAIL"

    echo -e "${TXTRST} [$(($(date +%s) - START_TIME))s]"
done

popd > /dev/null
