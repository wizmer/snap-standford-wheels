set -x

function pre_build {
    build_swig
}

function run_tests {
    python --version
    pip install nose
    echo $REPO_DIR
    nosetests $REPO_DIR/test
}
