for d in */ ; do
    echo $d
    cd $d
    bash build-all.sh
    cd ..
done
