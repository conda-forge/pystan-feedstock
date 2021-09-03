#!/bin/bash
set -ex

STAN_VER=${PKG_VERSION:0:${#PKG_VERSION}-3}

# force recreate cython files
rm -rf pystan/*.cpp

${PYTHON} -m pip install . -vv
