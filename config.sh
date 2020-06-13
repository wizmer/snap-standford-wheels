set -x

function pre_build {
    build_swig
}

function run_tests {
    python --version
    pip install nose
    nosetests ../snap-python/test
}
