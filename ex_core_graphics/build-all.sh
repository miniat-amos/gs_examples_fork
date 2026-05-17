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

for d in */ ; do
    echo $d
    cd $d
    bash proc/${PLATFORM}/*.sh
    cd ..
done
