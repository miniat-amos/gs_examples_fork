# maps OS string to folder name
declare -A PLATFORM
# finds every directory named proc
declare -A PROCS=$(find . -name 'proc')
# grabs script directory
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

PLATFORM["msys"]="win"
PLATFORM["darwin"]="osx"
PLATFORM["linux-gnu"]="linux"
for dir in ${PROCS[@]}; do
    echo ${dir:2:-4}
    cd ${dir::-4}
    bash proc/${PLATFORM["$OSTYPE"]}/*.sh
    cd ${SCRIPT_DIR}
done
