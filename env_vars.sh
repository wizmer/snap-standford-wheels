if [ -z "$IS_OSX" ]; then
    export SNAPROOT=/io/snap

    # Override the flag in Makefile.config
    export IFLAGS3=-I/opt/python/cp36-cp36m/include/python3.6m
else
    export SNAPROOT=${TRAVIS_BUILD_DIR}/snap
fi
