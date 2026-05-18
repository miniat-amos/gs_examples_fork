# Change the working directory to this script's directory
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
cd $SCRIPT_DIR

# Build scripts are separated into directories by operating system.
# The PLATFORM string identifies the correct directory for this system,
# expected in the "proc" directory of each example.
#
# The *s in the pattern matching handle common variations in values
# for $OSTYPE, such as "darwin24.4.0" and "linux" vs "linux-gnu".
case "$OSTYPE" in
    msys*|mingw*) PLATFORM="win"   ;;
    linux*)       PLATFORM="linux" ;;
    darwin*)      PLATFORM="osx"   ;;
    *)
        echo "Unknown operating system type: $OSTYPE"
        exit 1
        ;;
esac

# All examples and example collections are organized into immediate
# subdirectories relative to this script and contain a 'build-all.sh'
SCRIPTS=$(find . -mindepth 2 -maxdepth 2 -name 'build-all.sh')

for s in $SCRIPTS ; do    
    echo ${DIR:2:-12}
    bash ${s}
done
