set -x

if [ -z "$IS_OSX" ]; then
    export SNAPROOT=/io/snap

    # Override the flag in Makefile.config
    export IFLAGS3=-I/opt/python/cp36-cp36m/include/python3.6m
else
    python-config --includes
    python3-config --includes
    python-config --ldflags
    python3-config --ldflags
    export SNAPROOT=${TRAVIS_BUILD_DIR}/snap
fi
