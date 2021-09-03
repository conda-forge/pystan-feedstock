#!/bin/bash
set -ex

STAN_VER=${PKG_VERSION:0:${#PKG_VERSION}-2}

${PYTHON} -m pip install . -vv
