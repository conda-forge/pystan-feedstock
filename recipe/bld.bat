set "STAN_VER=%PKG_VERSION:~0,-2%"

pushd pystan\\stan\\lib\\stan_math
if errorlevel 1 exit 1

rd /q /s doc doxygen make test lib\\cpplist_* lib\\gtest_*
if errorlevel 1 exit 1

popd
if errorlevel 1 exit 1

python setup.py install -q --single-version-externally-managed --record=record.txt
if errorlevel 1 exit 1
