#!/bin/bash
set -ex

STAN_VER=${PKG_VERSION:0:${#PKG_VERSION}-2}

# force recreate cython files
rm -rf pystan/*.cpp

# These folders are not needed in the build and we don't want to include them
# in the package. This should be cleaned via MANIFEST.in.
rm -fr doc doxygen make test lib/cpplist_* lib/gtest_*
popd

${PYTHON} -m pip install . -vv
