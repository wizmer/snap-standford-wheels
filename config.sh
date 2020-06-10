set -x

function pre_build {
    build_swig
}

function run_tests {
    python --version
    python -c 'import sys; import snap'
}
